use std::sync::Arc;

use crate::core::config::get_plugins_dir;
use crate::core::io::cache::DatabaseHandler;
use crate::core::Plugin;
use crate::core::{config::get_tmp_dir, io::cache::Cache, Installer};
use crate::gui::style;
use iced::pure::{button, column, container, row, scrollable, text, text_input, Element};
use iced::{
    alignment::{Horizontal, Vertical},
    Alignment, Command, Length,
};
use log::debug;

#[derive(Debug, Clone)]
pub enum Catalog {
    Loaded(State),
    NoInternet(State),
}

impl Catalog {
    pub fn new(cache: Arc<Cache>) -> Self {
        let state = State {
            cache,
            base_plugins: Vec::new(),
            plugins: Vec::new(),
            input_value: String::new(),
        };

        Self::Loaded(state)
    }
}

#[derive(Debug, Clone)]
pub struct State {
    cache: Arc<Cache>,
    pub input_value: String,
    pub base_plugins: Vec<PluginRow>,
    pub plugins: Vec<PluginRow>,
}

#[derive(Debug, Clone)]
pub enum Message {
    CatalogInputChanged(String),
    Catalog(usize, RowMessage),
    LoadPlugins,
    RetryPressed,
}

impl Catalog {
    fn map_plugins_to_rows(plugins: &[Plugin]) -> Vec<PluginRow> {
        let mut rows: Vec<PluginRow> = plugins
            .iter()
            .map(|element| {
                PluginRow::new(
                    element.id,
                    &element.name,
                    &element.current_version,
                    &element.latest_version,
                )
            })
            .collect();

        rows.sort_by(|a, b| a.title.to_lowercase().cmp(&b.title.to_lowercase()));
        rows
    }

    pub fn update(&mut self, message: Message) -> Command<Message> {
        match self {
            Catalog::Loaded(state) => match message {
                Message::CatalogInputChanged(letter) => {
                    let mut filerted_plugins = Vec::new();
                    state.input_value = letter;

                    for element in &state.base_plugins {
                        if element
                            .title
                            .to_lowercase()
                            .contains(&state.input_value.to_lowercase())
                        {
                            filerted_plugins.push(element.clone());
                        }
                    }
                    filerted_plugins
                        .sort_by(|a, b| a.title.to_lowercase().cmp(&b.title.to_lowercase()));
                    state.plugins = filerted_plugins;
                    Command::none()
                }
                Message::Catalog(index, msg) => state.plugins[index]
                    .update(msg, &*state.cache)
                    .map(move |msg| Message::Catalog(index, msg)),
                Message::LoadPlugins => {
                    let plugins = state
                        .cache
                        .get_plugins()
                        .values()
                        .cloned()
                        .collect::<Vec<Plugin>>();
                    let rows = Catalog::map_plugins_to_rows(&plugins);
                    state.plugins = rows.clone();
                    state.base_plugins = rows;

                    Command::none()
                }
                Message::RetryPressed => Command::none(),
            },
            Catalog::NoInternet(_) => Command::none(),
        }
    }

    fn build_plugins_scrollable(plugins: &'_ [PluginRow]) -> Element<'_, Message> {
        if plugins.is_empty() {
            row()
                .height(Length::Fill)
                .push(text("Loading plugins..."))
                .align_items(Alignment::Center)
                .into()
        } else {
            let plugins_column = plugins
                .iter()
                .enumerate()
                .fold(column().padding([0, 13, 0, 0]).spacing(5), |col, (i, p)| {
                    col.push(p.view().map(move |msg| Message::Catalog(i, msg)))
                });
            scrollable(plugins_column)
                .scrollbar_width(10)
                .style(style::Scrollable)
                .into()
        }
    }

    pub fn view(&self) -> Element<Message> {
        match self {
            Catalog::Loaded(State {
                cache: _,
                plugins,
                input_value,
                base_plugins: _,
            }) => {
                let search_plugins = text_input(
                    "Search plugins...",
                    input_value,
                    Message::CatalogInputChanged,
                )
                .padding(5);

                let plugin_amount = text(format!("{} plugins found", plugins.len()));

                let search_row = row()
                    .width(Length::Fill)
                    .align_items(Alignment::Center)
                    .spacing(10)
                    .push(search_plugins)
                    .push(plugin_amount);

                let plugin_name = text("Plugin").width(Length::FillPortion(6));
                let current_version = text("Current Version").width(Length::FillPortion(3));
                let latest_version = text("Latest version").width(Length::FillPortion(3));
                let upgrade = text("").width(Length::FillPortion(2));

                let plugin_panel = row()
                    .width(Length::Fill)
                    .align_items(Alignment::Center)
                    .padding([0, 13, 0, 0])
                    .push(plugin_name)
                    .push(current_version)
                    .push(latest_version)
                    .push(upgrade);

                let plugins_scrollable = Catalog::build_plugins_scrollable(plugins);

                let content = column()
                    .width(Length::Fill)
                    .spacing(10)
                    .align_items(Alignment::Center)
                    .push(search_row)
                    .push(plugin_panel)
                    .push(plugins_scrollable);

                container(content)
                    .height(Length::Fill)
                    .padding(20)
                    .style(style::Content)
                    .into()
            }
            Catalog::NoInternet(State {
                cache: _,
                plugins: _,
                input_value: _,
                base_plugins: _,
            }) => {
                let retry_button = button(text("Retry"))
                    .on_press(Message::RetryPressed)
                    .padding(5)
                    .style(style::PrimaryButton::Enabled);

                let content = column()
                    .push(
                        text("No Lembas server connection")
                            .horizontal_alignment(Horizontal::Center)
                            .vertical_alignment(Vertical::Center)
                            .size(20),
                    )
                    .align_items(Alignment::Center)
                    .spacing(10)
                    .push(retry_button);

                container(content)
                    .width(Length::Fill)
                    .height(Length::Fill)
                    .center_y()
                    .center_x()
                    .style(style::Content)
                    .into()
            }
        }
    }
}
#[derive(Clone, Debug)]
pub struct PluginRow {
    pub id: i32,
    pub title: String,
    pub current_version: String,
    pub latest_version: String,
    pub status: String,
    pub download_url: String,
}

#[derive(Clone, Debug)]
pub enum RowMessage {
    InstallPressed(PluginRow),
    WebsitePressed(PluginRow),
    NoEvent,
}

impl PluginRow {
    pub fn new(id: i32, title: &str, current_version: &str, latest_version: &str) -> Self {
        let base_url = "http://www.lotrointerface.com/downloads/";

        Self {
            id,
            title: title.to_string(),
            current_version: current_version.to_string(),
            latest_version: latest_version.to_string(),
            status: "Install".to_string(),
            download_url: format!("{}download{}", base_url, id),
        }
    }

    pub fn update(&mut self, message: RowMessage, cache: &Cache) -> Command<RowMessage> {
        match message {
            RowMessage::InstallPressed(plugin) => {
                let tmp_dir = get_tmp_dir();
                let plugins_dir = get_plugins_dir();
                let mut installer =
                    Installer::new(&tmp_dir, &plugins_dir, plugin.id, &plugin.title);

                match installer.download(&plugin.download_url) {
                    Ok(content) => match installer.install(&content) {
                        Ok(root_folder_name) => {
                            installer.move_files(&root_folder_name);
                            if cache
                                .mark_as_installed(plugin.id, &plugin.latest_version)
                                .is_ok()
                            {
                                installer.delete_cache_folder();
                                self.status = "Installed".to_string();
                                self.current_version = plugin.latest_version;
                            } else {
                                self.status = "Installation failed".to_string();
                            }
                        }
                        Err(e) => {
                            debug!("{:?}", e);
                            self.status = "Installation failed".to_string();
                        }
                    },
                    Err(error) => {
                        debug!("{:?}", error);
                        self.status = "Download failed".to_string();
                    }
                }
                Command::none()
            }

            RowMessage::WebsitePressed(row) => {
                webbrowser::open(&format!(
                    "https://www.lotrointerface.com/downloads/info{}-{}.html",
                    row.id, row.title,
                ))
                .unwrap();
                Command::none()
            }
            RowMessage::NoEvent => Command::none(),
        }
    }

    pub fn view(&self) -> Element<RowMessage> {
        let plugin = self.clone();
        let website_plugin = self.clone();

        column()
            .push(
                button(
                    row()
                        .align_items(Alignment::Center)
                        .push(text(&self.title).width(Length::FillPortion(6)))
                        .push(text(&self.current_version).width(Length::FillPortion(3)))
                        .push(text(&self.latest_version).width(Length::FillPortion(3)))
                        .push(if plugin.current_version.is_empty() {
                            button(
                                text("Install")
                                    .width(Length::Fill)
                                    .horizontal_alignment(Horizontal::Center),
                            )
                            .on_press(RowMessage::InstallPressed(plugin))
                            .style(style::PrimaryButton::Enabled)
                            .width(Length::FillPortion(2))
                        } else if plugin.current_version == plugin.latest_version {
                            button(
                                text("Installed")
                                    .width(Length::Fill)
                                    .horizontal_alignment(Horizontal::Center),
                            )
                            .on_press(RowMessage::NoEvent)
                            .style(style::InstallButton::Enabled)
                            .width(Length::FillPortion(2))
                        } else {
                            button(
                                text("Update")
                                    .width(Length::Fill)
                                    .horizontal_alignment(Horizontal::Center),
                            )
                            .on_press(RowMessage::InstallPressed(plugin))
                            .style(style::PrimaryButton::Enabled)
                            .width(Length::FillPortion(2))
                        }),
                )
                .on_press(RowMessage::WebsitePressed(website_plugin))
                .style(style::PluginRow::Enabled),
            )
            .into()
    }
}
