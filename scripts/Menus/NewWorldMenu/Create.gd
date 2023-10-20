extends Node

func _on_pressed():
	var world_name = %WorldNameEntry.get("text")
	
	Game.current_world_name = world_name
	get_tree().change_scene_to_file("res://scenes/World/World.tscn")
	
		
