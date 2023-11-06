extends Node

func _on_pressed():
	var universe_name = %UniverseNameEntry.get("text")
	
	Game.current_universe_name = universe_name
	get_tree().change_scene_to_file("res://scenes/Universe/Universe.tscn")
	
		
