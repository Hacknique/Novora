class_name World  # Makes the class globally accessible by name
extends Node

const BASE_PATH = "user://"
const WORLDS_PATH = BASE_PATH + "worlds/"

var title: String
var data: WorldData

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
	var player_data = PlayerData.new() 
	player_data.name = player.username
	player_data.position = player.position
	player_data = player_data.to_dict()
	print("PlayerData ->")
	print(player_data)
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
	init_dir()
	
	
			
func init_dir():
	var dir = DirAccess.open(self.BASE_PATH)
	if dir.dir_exists(self.WORLDS_PATH):
		print("Cant make worlds directory as it already exists")
	else:
		var make_dir = dir.make_dir("worlds")
		if make_dir == OK:
			print("Made Worlds directory")
		else:
			print("Could not make Worlds directory")
	

func load_or_save(world_scene):
	if self.does_exist():
		self.data = self.load(world_scene)
		print("Loaded World " + self.title)
		return true
	else:
		self.data = self.save(world_scene)
		print("Saved World " + self.title)
		return false

func world_path() -> String:
	return WORLDS_PATH + self.title + ".tres"

func does_exist() -> bool:
	var path = world_path()
	return FileAccess.file_exists(path)

func delete() -> bool:
	var dir = DirAccess.open(WORLDS_PATH)
	var file_path = WORLDS_PATH + self.title + ".tres"
	if dir:
		var error = dir.remove(file_path)
		if error == OK:
			return true
		else:
			print("Could not remove "+ "'"+file_path+"'")
			return false
	else:
		print("Could not open 'worlds' directory")
		return false

func save(world_scene) -> WorldData:
	var player_data = get_world_playerdata(world_scene)
	var world_data = WorldData.new()
	world_data.world_name = self.title
	world_data.player_data = player_data
	var path = world_path()
	
	var error = ResourceSaver.save(world_data, path)
	# Check for errors
	if error == OK:
		print("Saved successfully!")
	else:
		print("Failed to save with error code: ", error)
	return world_data

func load(world_scene) -> WorldData:
	var path = world_path()
	return ResourceLoader.load(path)
