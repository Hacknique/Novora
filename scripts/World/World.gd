extends Node3D

var world_name
var world_data

func initialize():
	print(self.world_name)
	var world = World.new(self.world_name)
	world.load_or_save()
	
