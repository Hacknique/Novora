class_name Universe  # Makes the class globally accessible by name
extends Node

const BASE_PATH = "user://"
const UNIVERSES_PATH = BASE_PATH + "universes/"
@export var universe_data: UniverseData


static func worlds_dir(title):
	return UNIVERSES_PATH + title + "/worlds/"

static func players_dir(title):
	return UNIVERSES_PATH + title + "/players/"
	
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
	var player_data = PlayerData.new(self.name, player.name) 
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
	self.name = title
	init_dir(title)

func init_universes_dir():
	var dir = DirAccess.open(self.BASE_PATH)
	if dir.dir_exists(self.UNIVERSES_PATH):
		print("Cant make universes directory as it already exists")
		return OK
	else:
		var make_universes_dir = dir.make_dir("universes")
		return make_universes_dir

func init_universe_dir(title):
	var dir = DirAccess.open(UNIVERSES_PATH)
	if dir.dir_exists(self.universe_path(title)):
		return OK
	else:
		var mk_universe_dir = dir.make_dir(title)
		return mk_universe_dir

func init_worlds_dir(title):
	var dir = DirAccess.open(self.universe_path(title))
	print("0101")
	print(dir)
	if dir.dir_exists(self.worlds_dir(title)):
		return OK
	else:
		var mk_worlds_dir = dir.make_dir(self.worlds_dir(title))
		return mk_worlds_dir

func init_players_dir(title):
	var dir = DirAccess.open(self.universe_path(title))
	if dir.dir_exists(self.players_dir(title)):
		return OK
	else:
		var mk_players_dir = dir.make_dir(self.players_dir(title))
		return mk_players_dir
		
func init_dir(title):
	var mk_universes_dir = init_universes_dir()
	if mk_universes_dir == OK:
		print("Made Universes directory sucessfully")
		var mk_universe_dir = init_universe_dir(title)
		if mk_universe_dir == OK:
			print("Made Universe: '"+title+"' directory sucessfully")
			var mk_worlds_dir = init_worlds_dir(title)
			if mk_worlds_dir == OK:
				print("Made 'worlds' directory for universe '"+title+"'")
			else:
				print("Could not make 'worlds' directory for universe '"+title+"'")
			var mk_players_dir = init_players_dir(title)
			if mk_players_dir == OK:
				print("Made 'players' directory for universe '"+title+"'")
			else:
				print("Could not make 'players' directory for universe '"+title+"'")
		else:
			print("Could not make directory for universe '"+title+"'")
	else:
		print("Could not make universes directory")
	

func load_or_save(world_scene):
	if self.does_exist(self.name):
		self.universe_data = self.load(world_scene)
		print("Loaded World " + self.name)
		return true
	else:
		self.universe_data = self.save(world_scene)
		print("Saved World " + self.name)
		return false


static func universe_path(title) -> String:
	return UNIVERSES_PATH + title

static func does_exist(title) -> bool:
	var path = universe_path(title)
	return DirAccess.dir_exists_absolute(path)

func delete() -> bool:
	var dir = DirAccess.open(UNIVERSES_PATH)
	var world_path = UNIVERSES_PATH + "/" + self.name
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

func save(world_scene) -> UniverseData:
	var player_data = get_world_playerdata(world_scene)
	var universe_data = UniverseData.new(self.name)
	for key in player_data.keys():
		universe_data.players_data[key] = player_data[key]
		player_data[key].save()
	self.universe_data = universe_data
	return universe_data

func load(world_scene) -> UniverseData:
	var path = universe_path(self.name)
	return ResourceLoader.load(path).universe_data
