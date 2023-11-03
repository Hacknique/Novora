extends Node3D

var voxel_scene = preload("res://scenes/Objects/Voxel.tscn")
var player_scene = preload("res://scenes/Objects/Player3D.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	# Create an instance of the scene
	var voxel_instance = voxel_scene.instantiate()

	# Add the instance to the current scene
	add_child(voxel_instance)
	
	var player_instance = player_scene.instantiate()
	player_instance.name = "singleplayer"
	
	#if is_load:
	#	print(world.data.player_data)
	#	var player_data = world.data.player_data["singleplayer"]
	#	player_instance.position = player_data.position

	# Add player to scene
	add_child(player_instance)
