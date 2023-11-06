extends Node3D
class_name UniverseScene

var genesis_scene = preload("res://scenes/Universe/World.tscn")

func _ready():
	self.name = Game.current_universe_name
	print(self.name)
	var universe = Universe.new(self.name)
	
	var genesis_instance = genesis_scene.instantiate()
	genesis_instance.name = "Genesis"
	add_child(genesis_instance)
	
	var is_load = universe.load_or_save(self)
	
	Game.universe = universe


