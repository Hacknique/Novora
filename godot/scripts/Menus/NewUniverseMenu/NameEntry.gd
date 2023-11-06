extends Node

func _on_text_changed(new_text):
	var dir = DirAccess.open(Universe.UNIVERSES_PATH)
	if new_text != "" and !dir.dir_exists(new_text) and %OptionButton.selected != -1:
		%CreateNewUniverseBtn.disabled = false
	else:
		%CreateNewUniverseBtn.disabled = true
