extends Node

func _on_text_changed(new_text):
	var world = World.new(new_text)
	if new_text != "" and !world.does_exist() and %OptionButton.selected != -1:
		%CreateNewWorldBtn.disabled = false
	else:
		%CreateNewWorldBtn.disabled = true
