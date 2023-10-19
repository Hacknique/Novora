extends Button

func _on_pressed():
	%DeleteWorldDialog.popup_centered()

func _on_delete_world_dialog_confirmed():
	
	var world_list = %WorldList
	var selected_idx = world_list.get_selected_items()[0]
	world_list.remove_item(selected_idx)
	%DeleteWorldBtn.disabled = true
	%PlayWorldBtn.disabled = true
