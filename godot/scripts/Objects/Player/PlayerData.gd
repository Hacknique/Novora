extends Resource
class_name PlayerData

@export var position : Vector3
@export var name : String

var universe_name : String
const player_data_dir = "players"

func _init(universe_name, name):
	self.universe_name = universe_name
	self.name = name
	init_dir()
	
func init_dir():
	var dir = DirAccess.open(Universe.BASE_PATH)
	if dir.dir_exists(Universe.UNIVERSES_PATH + "/" + self.universe_name):
		print("Cant make worlds directory as it already exists")
	else:
		var make_dir = dir.make_dir("players")
		if make_dir == OK:
			print("Made Players directory")
		else:
			print("Could not make Players directory")

static func does_exist(universe_name, player_name) -> bool:
	var path = Universe.universe_path(universe_name) + "/" + player_data_dir + "/" + player_name + ".tres"
	return FileAccess.file_exists(path)

func save() -> bool:
	var save_dir = Universe.universe_path(self.universe_name)
	var save_path = save_dir+"/" +player_data_dir+ "/" + self.name + ".tres"
	print(save_path)
	var error = ResourceSaver.save(self, save_path)
	# Check for errors
	if error == OK:
		print("Saved successfully!")
		return true
	else:
		print("Failed to save with error code: ", error)
		return false

func load() -> bool:
	var path = Universe.universe_path(self.title) + "/" + player_data_dir + "/" + self.name + ".tres"
	var resource_data =  ResourceLoader.load(path)
	if resource_data:
		self.position = resource_data.position
		self.name = resource_data.name
		print("Resource data for player '"+self.name+"'"+" Loaded")
		return true
	else:
		return false
	
	
func load_or_save():
	if self.does_exist(self.universe_name, self.name):
		var is_loaded = self.load()
		if !is_loaded:
			print("Error occored when trying to load '"+self.name+"'"+ " in universe " + "'" + self.universe_name + "'")
			return -1
		print("Loaded Universe " + self.title)
		return true
	else:
		var is_saved = self.save()
		if !is_saved:
			print("Error occored when trying to save '"+self.name+"'"+ " in universe " + "'" + self.universe_name + "'")
			return -1
		print("Saved Universe " + self.title)
		return false
