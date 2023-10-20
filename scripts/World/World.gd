extends Node3D

var world_name
var world_data

func _on_ready():
	self.world_name = Game.current_world_name
	print(self.world_name)
	var world = World.new(self.world_name)
	world_data = world.data
	world.load_or_save()
