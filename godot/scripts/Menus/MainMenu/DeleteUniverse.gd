extends Button

const base_path = "user://"
const worlds_path = base_path + "worlds/"

func _on_pressed():
	%DeleteUniverseDialog.popup_centered()

func _on_delete_world_dialog_confirmed():
	
	var universe_list = %UniverseList
	var selected_idx = universe_list.get_selected_items()[0]
	var selected_world = universe_list.get_item_text(selected_idx)
	
	var universe = Universe.new(selected_world)
	universe.delete()
	universe_list.remove_item(selected_idx)
	%DeleteUniverseBtn.disabled = true
	%PlayUniverseBtn.disabled = true
