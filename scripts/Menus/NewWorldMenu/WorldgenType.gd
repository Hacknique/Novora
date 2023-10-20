extends OptionButton

func _on_item_selected(index):
	var worldgen_type = self.get_item_text(index)
	var world_name = %WorldNameEntry.text
	var world = World.new(world_name)
	if world_name != "" and !world.does_exist():
		%CreateNewWorldBtn.disabled = false
