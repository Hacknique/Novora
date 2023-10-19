extends Node

func _on_text_changed(new_text):
	if new_text != "":
		%CreateNewWorldBtn.disabled = false
	else:
		%CreateNewWorldBtn.disabled = true
