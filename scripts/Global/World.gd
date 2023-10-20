class_name World  # Makes the class globally accessible by name
extends Node

const BASE_PATH = "user://"
const WORLDS_PATH = BASE_PATH + "worlds/"

var title: String
var data: WorldData

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
	

func load_or_save():
	if self.does_exist():
		self.data = self.load()
		print("Loaded World " + self.title)
		return true
	else:
		self.data = self.save()
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

func save() -> WorldData:
	var world_data = WorldData.new()
	world_data.world_name = self.title
	var path = world_path()
	
	var error = ResourceSaver.save(world_data, path)
	# Check for errors
	if error == OK:
		print("Saved successfully!")
	else:
		print("Failed to save with error code: ", error)
	return world_data

func load() -> WorldData:
	var path = world_path()
	return ResourceLoader.load(path)
