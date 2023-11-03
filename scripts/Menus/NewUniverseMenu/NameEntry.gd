extends Node

func _on_text_changed(new_text):
	var universe = Universe.new(new_text)
	if new_text != "" and !universe.does_exist(new_text) and %OptionButton.selected != -1:
		%CreateNewUniverseBtn.disabled = false
	else:
		%CreateNewUniverseBtn.disabled = true
