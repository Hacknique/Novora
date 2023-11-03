class_name Universe  # Makes the class globally accessible by name
extends Node

const BASE_PATH = "user://"
const WORLDS_PATH = BASE_PATH + "universes/"

var title: String
var world_data: UniverseData
var player_data: PlayerData

func get_nodes_of_class(node):
	var result = []

	# Check the current node
	if node is Player:
		result.append(node)

	# Check all the child nodes
	for child in node.get_children():
		result += get_nodes_of_class(child)

	return result

	
func player_to_playerdata(player):
	var player_data = PlayerData.new(self.title, player.username) 
	player_data.position = player.position
	print("Updated Player Position on PlayerData")
	return player_data
	
func get_world_playerdata(world_scene):
	var player_data = {}
	print(world_scene)
	var players = get_nodes_of_class(world_scene)
	print("Players:")
	print(players)
	for player in players:
		player_data[player.name] = player_to_playerdata(player)
		print(player)
	return player_data

# Constructor
func _init(title: String):
	self.title = title
	init_dir(title)
			
func init_dir(title):
	var dir = DirAccess.open(self.BASE_PATH)
	if dir.dir_exists(self.WORLDS_PATH):
		print("Cant make worlds directory as it already exists")
	else:
		var make_dir = dir.make_dir("worlds")
		if make_dir == OK:
			dir = DirAccess.open(self.BASE_PATH + "/worlds")
			var make_world_dir = dir.make_dir(title)
			if make_world_dir == OK:
				print("Made directory for world '"+title+"'")
			else:
				print("Could not make directory for world '"+title+"'")
			print("Made Worlds directory")
		else:
			print("Could not make Worlds directory")
	

func load_or_save(world_scene):
	if self.does_exist(self.title):
		self.data = self.load(world_scene)
		print("Loaded World " + self.title)
		return true
	else:
		self.data = self.save(world_scene)
		print("Saved World " + self.title)
		return false


static func universe_path(title) -> String:
	return WORLDS_PATH + "/" + title

static func does_exist(title) -> bool:
	var path = universe_path(title)
	return DirAccess.dir_exists_absolute(path)

func delete() -> bool:
	var dir = DirAccess.open(WORLDS_PATH)
	var world_path = WORLDS_PATH + "/" + self.title
	if dir:
		var error = dir.remove(world_path)
		if error == OK:
			return true
		else:
			print("Could not remove "+ "'"+world_path+"'")
			return false
	else:
		print("Could not open 'worlds' directory")
		return false

func save(world_scene) -> WorldData:
	var player_data = get_world_playerdata(world_scene)
	var world_data = WorldData.new()
	world_data.world_name = self.title
	world_data.player_data = player_data
	var path = universe_path(self.title)
	
	var error = ResourceSaver.save(world_data, path)
	# Check for errors
	if error == OK:
		print("Saved successfully!")
	else:
		print("Failed to save with error code: ", error)
	return world_data

func load(world_scene) -> WorldData:
	var path = universe_path(self.title)
	return ResourceLoader.load(path)
