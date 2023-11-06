extends OptionButton

func _on_item_selected(index):
	var worldgen_type = self.get_item_text(index)
	var universe_name = %UniverseNameEntry.text
	var universe = Universe.new(universe_name)
	if universe_name != "" and !universe.does_exist(universe_name):
		%CreateNewUniverseBtn.disabled = false
