use godot::engine::{Label, LabelVirtual};
use godot::prelude::*;

#[derive(GodotClass)]
#[class(base=Label)]
struct Title {
    #[base]
    label: Base<Label>,
}

#[godot_api]
impl LabelVirtual for Title {
    fn init(label: Base<Label>) -> Self {
        godot_print!("Title ready");
        Self { label }
    }
    fn ready(&mut self) {
        godot_print!("Title ready");
        self.label.set_text("Novora".into());
    }
}
