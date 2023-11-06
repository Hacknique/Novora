use godot::prelude::*;

pub mod menus;

struct Novora;

#[gdextension]
unsafe impl ExtensionLibrary for Novora {}
