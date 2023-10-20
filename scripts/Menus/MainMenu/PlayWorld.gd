extends Node

func _on_pressed():
	var selected_index = %WorldList.get_selected_items()[0]  # This gives an array of selected item indices, [0] gets the first one
	var selected_world_name = %WorldList.get_item_text(selected_index)
	var world_scene = preload("res://scenes/World/World.tscn")

	# Instance the scene
	var world_instance = world_scene.instantiate()

	# Pass the data
	world_instance.set("world_name", selected_world_name)
	
	# Call the initialize function
	world_instance.initialize()

	# Now add it to the tree and make it the current scene
	get_tree().current_scene.queue_free()
	get_tree().root.add_child(world_instance)
	get_tree().current_scene = world_instance
	get_tree().reload_current_scene()
