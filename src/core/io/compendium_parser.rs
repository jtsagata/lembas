//! This module is used to parse `.plugincompendium files`. These compendium files are xml files that contain
//! information about the specific plugin that gets installed. Not every information is in the compendium file.
//! Often there is a second file which has the `.plugin` extension which contains the rest.
use super::plugin_parser::parse_plugin_file;
use crate::core::lotro_compendium::Plugin;
use serde::Deserialize;
use serde_xml_rs::from_reader;
use std::{
    fs::File,
    path::{Path, PathBuf},
};

#[derive(Debug, PartialEq, Eq)]
enum Separator {
    Dot,
    Backslash,
}

pub fn parse_compendium_file(path: &Path) -> Plugin {
    let file = File::open(&path).unwrap();

    let content: PluginCompendiumContent = from_reader(file).unwrap();
    let compendium_content = content._purge_descriptors(path);

    if compendium_content.description.is_some() {
        Plugin::new(&compendium_content.name)
            .with_id(compendium_content.id)
            .with_description(&compendium_content.description.unwrap())
            .with_author(&compendium_content.author)
            .with_current_version(&compendium_content.version)
            .build()
    } else if compendium_content.plugin_file_location.is_empty() {
        Plugin::new(&compendium_content.name)
            .with_id(compendium_content.id)
            .with_author(&compendium_content.author)
            .with_current_version(&compendium_content.version)
            .build()
    } else {
        let plugin_path = build_plugin_path(path, &compendium_content.plugin_file_location);

        if plugin_path.exists() {
            let plugin_content = parse_plugin_file(&plugin_path);

            Plugin::new(&compendium_content.name)
                .with_id(compendium_content.id)
                .with_description(&plugin_content.description.unwrap())
                .with_author(&compendium_content.author)
                .with_current_version(&compendium_content.version)
                .build()
        } else {
            Plugin::new(&compendium_content.name)
                .with_id(compendium_content.id)
                .with_author(&compendium_content.author)
                .with_current_version(&compendium_content.version)
                .build()
        }
    }
}

/// Returns an enum which indicates the separator of the given descriptor based on their
/// String and Separator char amounts in the descriptor
fn calculate_separator(descriptor: &str) -> Separator {
    let dots = descriptor.matches('.').count();
    let backslashes = descriptor.matches('\\').count();
    if backslashes >= dots {
        Separator::Backslash
    } else {
        Separator::Dot
    }
}

/// Returns the compendium file name which is used to extract the correct descriptors from the compendium file.
fn build_plugin_file_name(path: &Path) -> String {
    let file_name = path.file_stem().unwrap().to_str().unwrap();

    format!("{}.plugin", file_name)
}

/// Used to check if there is a corresponding `.plugin` file next to the initial `.plugincompendium` file.
///
/// Usually the plugin folder contains a `.plugincompendium` and `.plugin` file. The first one is our most important one.
/// The `.plugin` file is used to get a plugin description if non is given. For example the following path could be given:
///
/// # Arguments
///
/// * `descriptor` - Holds the path to the `.plugin` file that is found in the `.plugincompendium` file
fn build_plugin_path(plugin_folder_path: &Path, file_path: &str) -> PathBuf {
    let mut manipulated_path = plugin_folder_path.to_path_buf();

    match calculate_separator(file_path) {
        Separator::Dot => {
            let splitted_path: Vec<&str> = file_path.split('.').collect();
            let splited_path_length = splitted_path.len();
            manipulated_path.set_file_name(splitted_path[splited_path_length - 2..].join("."));
            manipulated_path
        }
        Separator::Backslash => {
            let splitted_path: Vec<&str> = file_path.split('\\').collect();
            let splited_path_length = splitted_path.len();
            manipulated_path.set_file_name(splitted_path[splited_path_length - 1]);
            manipulated_path
        }
    }
}

use serde::Deserialize;
use serde_xml_rs::from_reader;
use std::{fs::File, path::Path};

// When .plugin file, check all folders if there is a .compendium file with the same name. If not,
// return the .plugin content with an unmaintained name
pub fn parse_plugin_file(path: &Path) -> PluginDataClass {
    let file = File::open(path).unwrap();

    let content: Plugin = from_reader(file).unwrap();

    PluginDataClass::new(
        &content.information.name,
        &content.information.author,
        &content.information.version,
    )
    .with_description(&content.information.description)
    .build()
}

#[derive(Deserialize, Debug, PartialEq, Hash, Eq)]
#[serde(rename_all = "PascalCase")]
struct Plugin {
    pub information: Information,
}

#[derive(Deserialize, Debug, PartialEq, Hash, Eq, Clone)]
#[serde(rename_all = "PascalCase")]
struct Information {
    pub name: String,
    #[serde(default)]
    pub description: String,
    pub author: String,
    pub version: String,
}

#[derive(Deserialize, Debug, PartialEq, Hash, Eq)]
#[serde(rename_all = "PascalCase")]
struct PluginCompendiumContent {
    id: i32,
    name: String,
    version: String,
    author: String,
    description: Option<String>,
    info_url: String,
    download_url: String,
    #[serde(default)]
    descriptors: Descriptors,
    #[serde(default)]
    dependencies: Dependencies,
}

#[derive(Deserialize, Debug, PartialEq, Hash, Eq)]
struct PluginCompendium {
    id: i32,
    name: String,
    version: String,
    author: String,
    description: Option<String>,
    info_url: String,
    download_url: String,
    plugin_file_location: String,
    dependencies: Vec<String>,
}

impl PluginCompendiumContent {
    pub fn _purge_descriptors(&self, path: &Path) -> PluginCompendium {
        let file_name = build_plugin_file_name(path);
        let other_descriptors: Vec<String> = self
            .descriptors
            .descriptor
            .clone()
            .into_iter()
            .filter(|element| !element.contains(&file_name))
            .collect();

        let purged_descriptors: Vec<String> = self
            .descriptors
            .descriptor
            .clone()
            .into_iter()
            .filter(|element| element.contains(&file_name))
            .collect();

        if purged_descriptors.is_empty() {
            PluginCompendium {
                id: self.id,
                name: self.name.clone(),
                version: self.version.clone(),
                author: self.author.clone(),
                description: self.description.clone(),
                info_url: self.info_url.clone(),
                download_url: self.download_url.clone(),
                plugin_file_location: String::new(),
                dependencies: self.dependencies.dependency.clone(),
            }
        } else {
            PluginCompendium {
                id: self.id,
                name: self.name.clone(),
                version: self.version.clone(),
                author: self.author.clone(),
                description: self.description.clone(),
                info_url: self.info_url.clone(),
                download_url: self.download_url.clone(),
                plugin_file_location: purged_descriptors[0].clone(),
                dependencies: self.dependencies.dependency.clone(),
            }
        }
    }
}

#[derive(Default, Deserialize, Debug, PartialEq, Hash, Eq)]
struct Descriptors {
    #[serde(default)]
    descriptor: Vec<String>,
}

#[derive(Default, Deserialize, Debug, PartialEq, Hash, Eq)]
struct Dependencies {
    #[serde(default)]
    dependency: Vec<String>,
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn extract_plugin_descriptor() {
        let file = File::open(&"tests/samples/xml_files/TitanBar.plugincompendium").unwrap();
        let content: PluginCompendiumContent = from_reader(file).unwrap();
        let content = content._purge_descriptors(Path::new(
            "tests/samples/xml_files/TitanBar.plugincompendium",
        ));

        assert_eq!(content.plugin_file_location, "HabnaPlugins.TitanBar.plugin");
    }

    mod build_file_name_tests {
        use super::*;

        #[test]
        fn positive() {
            let result = build_plugin_file_name(Path::new(
                "tests/samples/xml_files/TitanBar.plugincompendium",
            ));

            assert_eq!(result, "TitanBar.plugin");
        }
    }

    mod build_plugin_paths_tests {
        use super::*;

        #[test]
        fn with_dot_separator() {
            let file_path = "HabnaPlugins.TitanBar.plugin";
            let result = build_plugin_path(
                Path::new("tests/samples/plugin_folders/HabnaPlugins/TitanBar.plugincompendium"),
                file_path,
            );
            assert_eq!(
                result,
                Path::new("tests/samples/plugin_folders/HabnaPlugins/TitanBar.plugin")
            );
        }

        #[test]
        fn with_backslash_separator() {
            let file_path = "Homeopatix\\Voyage.plugin";
            let result = build_plugin_path(
                Path::new("tests/samples/plugin_folders/Homeopatix/Voyage.plugincompendium"),
                file_path,
            );
            assert_eq!(
                result,
                Path::new("tests/samples/plugin_folders/Homeopatix/Voyage.plugin")
            );
        }
    }

    #[test]
    fn plugin_parsing() {
        let plugin = parse_plugin_file(Path::new("tests/samples/xml_files/PreciseCoords.plugin"));
        assert_eq!(plugin.name, "Precise Coords");
    }
}

//     mod calculate_separator_tests {
//         use super::*;

//         #[test]
//         fn backslash() {
//             let result = calculate_separator("Lunarwater\\Waypoint.plugin");
//             assert_eq!(result, Separator::Backslash);
//         }

//         #[test]
//         fn dot() {
//             let result = calculate_separator("HabnaPlugins.TitanBar.plugin");
//             assert_eq!(result, Separator::Dot);
//         }
//     }

//     mod plugin_compendium_tests {
//         use super::*;

//         #[test]
//         fn single_descriptor() {
//             let plugin = parse_compendium_file(Path::new(
//                 "tests/samples/plugin_folders/Homeopatix/Voyage.plugincompendium",
//             ));
//             assert_eq!(plugin.name, "Voyage");
//             assert_eq!(plugin.version, "3.13");
//         }

//         #[test]
//         fn multiple_descriptors() {
//             let plugin = parse_compendium_file(Path::new(
//                 "tests/samples/xml_files/Compendium.plugincompendium",
//             ));
//             assert_eq!(plugin.name, "LOTRO Compendium");
//             assert_eq!(plugin.version, "1.8.0-beta");
//             assert_eq!(plugin.id, Some(526));
//         }

//         #[test]
//         fn check_descriptors() {
//             let plugin = parse_compendium_file(Path::new(
//                 "tests/samples/plugin_folders/HabnaPlugins/HugeBag.plugincompendium",
//             ));

//             assert_eq!(plugin.name, "HugeBag");
//         }

//         #[test]
//         fn without_description() {
//             let plugin = parse_compendium_file(Path::new(
//                 "tests/samples/plugin_folders/HabnaPlugins/TitanBar.plugincompendium",
//             ));

//             assert_eq!(plugin.name, "TitanBar");
//             assert_eq!(
//                 plugin.description,
//                 Some(String::from("This is the TitanBar plugin"))
//             );
//         }

//         #[test]
//         fn with_description() {
//             let plugin = parse_compendium_file(Path::new(
//                 "tests/samples/xml_files/Animalerie.plugincompendium",
//             ));

//             assert_eq!(plugin.name, "Animalerie");
//             assert_eq!(plugin.description, Some(String::from("Hello World")));
//         }
//     }
// }
