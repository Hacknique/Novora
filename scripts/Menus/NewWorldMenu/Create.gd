extends Node

func _on_pressed():
	var world_name = %WorldNameEntry.get("text")
	
	var world_scene = preload("res://scenes/World/World.tscn")

	# Instance the scene
	var world_instance = world_scene.instantiate()

	# Pass the data
	world_instance.set("world_name", world_name)
	
	# Call the initialize function
	world_instance.initialize()

	# Now add it to the tree and make it the current scene
	get_tree().current_scene.queue_free()
	get_tree().root.add_child(world_instance)
	get_tree().current_scene = world_instance
	get_tree().reload_current_scene()
	
		
