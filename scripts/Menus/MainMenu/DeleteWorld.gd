extends Button

const base_path = "user://"
const worlds_path = base_path + "worlds/"

func _on_pressed():
	%DeleteWorldDialog.popup_centered()

func _on_delete_world_dialog_confirmed():
	
	var world_list = %WorldList
	var selected_idx = world_list.get_selected_items()[0]
	var selected_world = world_list.get_item_text(selected_idx)
	
	var world = World.new(selected_world)
	world.delete()
	world_list.remove_item(selected_idx)
	%DeleteWorldBtn.disabled = true
	%PlayWorldBtn.disabled = true
