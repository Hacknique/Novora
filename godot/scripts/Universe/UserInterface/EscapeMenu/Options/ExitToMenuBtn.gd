extends Button

func _on_pressed():
	var universe_scene = get_tree().get_root().get_node(Game.current_universe_name)
	Game.universe.save(universe_scene)
	get_tree().change_scene_to_file("res://scenes/Menus/MainMenu.tscn")
