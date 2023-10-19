extends ItemList


# Called when the node enters the scene tree for the first time.
func _ready():
	const base_path = "user://"
	const worlds_path = base_path + "worlds/"

	var worlds = DirAccess.get_files_at(worlds_path)
	
	for name in worlds:
		name = name.trim_suffix(".tres")
		self.add_item(name)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_item_selected(index):
	%DeleteWorldBtn.disabled = false
	%PlayWorldBtn.disabled = false


func _on_empty_clicked(at_position, mouse_button_index):
	%DeleteWorldBtn.disabled = true
	%PlayWorldBtn.disabled = true
	%WorldList.deselect_all()
