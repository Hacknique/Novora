extends Button

func _on_pressed():
	var world_scene = get_tree().get_root().get_node("World")
	print(world_scene)
	Game.world.save(world_scene)
	get_tree().change_scene_to_file("res://scenes/Menus/MainMenu.tscn")
