use godot::engine::{Label, LabelVirtual, ProjectSettings};
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
        Self { label }
    }
    fn ready(&mut self) {
        let title = ProjectSettings::singleton()
            .get_setting("application/config/name".into())
            .to_string()
            .to_godot();
        self.label.set_text(title);
    }
}
