extends Node
class_name UniverseData

@export var worlds_data: Dictionary = {}
@export var players_data: Dictionary = {}

func _init(universe_name):
	self.name = universe_name
	
