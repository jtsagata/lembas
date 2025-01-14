use log::debug;
use r2d2::Pool;
use r2d2_sqlite::SqliteConnectionManager;
use rusqlite::{params, Statement};
use std::{collections::HashMap, error::Error, sync::Arc};

use crate::core::Plugin;

pub trait DatabaseHandler {
    fn insert_plugin(&self, plugin: &Plugin, installed: i32) -> Result<(), Box<dyn Error>>;

    fn sync_plugins(&self, plugins: &[Plugin]) -> Result<(), Box<dyn Error>>;

    fn mark_as_installed(&self, plugin_id: i32, version: &str) -> Result<(), Box<dyn Error>>;

    fn delete_plugin(&self, name: &str) -> Result<(), Box<dyn Error>>;

    fn get_installed_plugins(&self) -> HashMap<String, Plugin>;

    fn get_plugins(&self) -> HashMap<String, Plugin>;

    fn get_plugin(&self, name: &str) -> Result<Option<Plugin>, Box<dyn Error>>;
}

#[derive(Debug, Clone)]
pub struct Cache {
    pool: Arc<Pool<SqliteConnectionManager>>,
}

impl Cache {
    pub fn new(connection: Pool<SqliteConnectionManager>) -> Self {
        Self {
            pool: Arc::new(connection),
        }
    }

    pub fn create_cache_db(&self) -> Result<(), rusqlite::Error> {
        let connection = self
            .pool
            .get()
            .expect("Error while creating a pooled connection");

        connection.execute(
            "
                CREATE TABLE IF NOT EXISTS plugins (
                    id INTEGER PRIMARY KEY,
                    name TEXT UNIQUE NOT NULL,
                    author TEXT,
                    current_version TEXT,
                    plugin_id INTEGER,
                    description TEXT,
                    download_url TEXT,
                    info_url TEXT,
                    category TEXT,
                    latest_version TEXT,
                    downloads INT,
                    archive_name TEXT,
                    updated_at INT,
                    hash TEXT,
                    installed INT DEFAULT 0
                );
        ",
            [],
        )?;

        Ok(())
    }

    fn execute_stmt(stmt: &mut Statement, params: &str) -> Vec<Plugin> {
        let mut all_plugins = Vec::new();

        let empty_params = params![];
        let has_params = params![params];
        let mut query_params = empty_params;

        if !params.is_empty() {
            query_params = has_params;
        }

        let plugin_iter = stmt
            .query_map(query_params, |row| {
                Ok(Plugin {
                    name: row.get(0).unwrap(),
                    author: row.get(1).unwrap(),
                    current_version: row.get(2).unwrap(),
                    id: row.get(3).unwrap(),
                    description: row.get(4).unwrap(),
                    download_url: row.get(5).unwrap(),
                    info_url: row.get(6).unwrap(),
                    category: row.get(7).unwrap(),
                    latest_version: row.get(8).unwrap(),
                    downloads: row.get(9).unwrap(),
                    archive_name: row.get(10).unwrap(),
                    updated: row.get(11).unwrap(),
                    hash: row.get(12).unwrap(),
                    installed: row.get(13).unwrap(),
                })
            })
            .unwrap();

        for plugin in plugin_iter {
            all_plugins.push(plugin.unwrap());
        }

        all_plugins
    }

    fn update_plugin_version(
        &self,
        plugin_id: i32,
        latest_version: &str,
    ) -> Result<(), rusqlite::Error> {
        let connection = self
            .pool
            .get()
            .expect("Error while creating a pooled connection");

        connection.execute(
            "UPDATE plugins
            SET latest_version = ?2
            WHERE
                plugin_id=?1",
            params![plugin_id, latest_version],
        )?;

        Ok(())
    }
}

impl DatabaseHandler for Cache {
    fn insert_plugin(&self, plugin: &Plugin, installed: i32) -> Result<(), Box<dyn Error>> {
        let connection = self
            .pool
            .get()
            .expect("Error while creating a pooled connection");

        connection.execute(
            "INSERT INTO plugins (name, author, current_version, plugin_id, description, download_url, info_url, category, latest_version, downloads, archive_name, updated_at, hash, installed)
            VALUES (?1, ?2, ?3, ?4, ?5, ?6, ?7, ?8, ?9, ?10, ?11, ?12, ?13, ?14)
            ON CONFLICT (name)
            DO UPDATE SET name=?1, author=?2, current_version=?3, plugin_id=?4, description=?5, download_url=?6, info_url=?7, category=?8, latest_version=?9, downloads=?10, archive_name=?11, updated_at=?12, hash=?13, installed=?14;",
        params![plugin.name, plugin.author, plugin.current_version, plugin.id, plugin.description, plugin.download_url, plugin.info_url, plugin.category, plugin.latest_version, plugin.downloads, plugin.archive_name, plugin.updated, plugin.hash, installed])?;

        Ok(())
    }

    fn sync_plugins(&self, plugins: &[Plugin]) -> Result<(), Box<dyn Error>> {
        let database_plugins = self.get_plugins();

        if database_plugins.is_empty() {
            for plugin in plugins {
                self.insert_plugin(plugin, 0).unwrap();
            }
        } else {
            for plugin in plugins {
                if database_plugins.contains_key(&plugin.name) {
                    let database_plugin = database_plugins.get(&plugin.name).unwrap();
                    if plugin.latest_version != database_plugin.latest_version {
                        self.update_plugin_version(plugin.id, &database_plugin.latest_version).map_err(|_|{
                            debug!("Error while updating the latest version of plugin {} to version {}", plugin.name, plugin.latest_version);
                        }).unwrap();
                    }
                }
            }
        }

        Ok(())
    }

    fn mark_as_installed(&self, plugin_id: i32, version: &str) -> Result<(), Box<dyn Error>> {
        let connection = self
            .pool
            .get()
            .expect("Error while creating a pooled connection");
        connection.execute(
            "UPDATE plugins
            SET installed = 1, current_version = ?2
            WHERE
                plugin_id=?1",
            params![plugin_id, version],
        )?;

        Ok(())
    }

    fn delete_plugin(&self, name: &str) -> Result<(), Box<dyn Error>> {
        let connection = self
            .pool
            .get()
            .expect("Error while creating a pooled connection");
        connection.execute(
            "DELETE FROM plugins WHERE name=?1;",
            params![name.to_string()],
        )?;

        Ok(())
    }

    fn get_installed_plugins(&self) -> HashMap<String, Plugin> {
        let mut plugins = HashMap::new();

        let connection = self
            .pool
            .get()
            .expect("Error while creating a pooled connection");
        let mut stmt = connection
            .prepare("SELECT name, author, current_version, plugin_id, description, download_url, info_url, category, latest_version, downloads, archive_name, updated_at, hash, installed
            FROM plugins
            WHERE installed=1
            ORDER BY name;")
            .unwrap();

        for element in Cache::execute_stmt(&mut stmt, "") {
            plugins.insert(element.name.clone(), element);
        }

        plugins
    }

    fn get_plugins(&self) -> HashMap<String, Plugin> {
        let mut plugins = HashMap::new();

        let connection = self
            .pool
            .get()
            .expect("Error while creating a pooled connection");
        let mut stmt = connection
            .prepare("SELECT name, author, current_version, plugin_id, description, download_url, info_url, category, latest_version, downloads, archive_name, updated_at, hash, installed FROM plugins ORDER BY name;")
            .unwrap();

        for element in Cache::execute_stmt(&mut stmt, "") {
            plugins.insert(element.name.clone(), element);
        }

        plugins
    }

    fn get_plugin(&self, name: &str) -> Result<Option<Plugin>, Box<dyn Error>> {
        let connection = self
            .pool
            .get()
            .expect("Error while creating a pooled connection");
        let mut stmt = connection
            .prepare("SELECT name, author, current_version, plugin_id, description, download_url, info_url, category, latest_version, downloads, archive_name, updated_at, hash, installed FROM plugins WHERE name=?1;")
            .unwrap();
        let mut plugin_iter = stmt.query_map([name.to_string()], |row| {
            Ok(Plugin {
                name: row.get(0).unwrap(),
                author: row.get(1).unwrap(),
                current_version: row.get(2).unwrap(),
                id: row.get(3).unwrap(),
                description: row.get(4).unwrap(),
                download_url: row.get(5).unwrap(),
                info_url: row.get(6).unwrap(),
                category: row.get(7).unwrap(),
                latest_version: row.get(8).unwrap(),
                downloads: row.get(9).unwrap(),
                archive_name: row.get(10).unwrap(),
                updated: row.get(11).unwrap(),
                hash: row.get(12).unwrap(),
                installed: row.get(13).unwrap(),
            })
        })?;

        Ok(plugin_iter.next().transpose()?)
    }
}
