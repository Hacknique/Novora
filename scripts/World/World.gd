extends Node3D
class_name WorldScene

var world_name
var voxel_scene = preload("res://scenes/Objects/Voxel.tscn")
var player_scene = preload("res://scenes/Objects/Player3D.tscn")

func _ready():
	self.world_name = Game.current_world_name
	print(self.world_name)
	var world = World.new(self.world_name)
	var is_load = world.load_or_save(self)

	# Create an instance of the scene
	var voxel_instance = voxel_scene.instantiate()

	# Add the instance to the current scene
	add_child(voxel_instance)
	
	var player_instance = player_scene.instantiate()
	player_instance.name = "singleplayer"
	
	if is_load:
		print(world.data.player_data)
		var player_data = world.data.player_data["singleplayer"]
		player_instance.position = player_data.position
	
	# Add player to scene
	add_child(player_instance)
	
	Game.world = world
