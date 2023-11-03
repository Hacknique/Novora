extends ItemList



func _ready():
	var universes = DirAccess.get_directories_at(Universe.UNIVERSES_PATH)
	
	for name in universes:
		self.add_item(name)

func _on_item_selected(index):
	%DeleteUniverseBtn.disabled = false
	%PlayUniverseBtn.disabled = false


func _on_empty_clicked(at_position, mouse_button_index):
	%DeleteUniverseBtn.disabled = true
	%PlayUniverseBtn.disabled = true
	%UniverseList.deselect_all()
