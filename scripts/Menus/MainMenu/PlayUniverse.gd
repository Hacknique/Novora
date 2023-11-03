extends Node

func _on_pressed():
	var selected_index = %WorldList.get_selected_items()[0]  # This gives an array of selected item indices, [0] gets the first one
	var selected_universe_name = %WorldList.get_item_text(selected_index)
	Game.current_universe_name = selected_universe_name
	get_tree().change_scene_to_file("res://scenes/World/World.tscn")
