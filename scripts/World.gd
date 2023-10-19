extends Node3D

var world_name
var world_data
const base_path = "user://"
const worlds_path = base_path + "worlds/"

func world_path(world_name):
	return worlds_path + world_name + ".tres"

func does_exist(world_name):
	var path = world_path(world_name)
	if FileAccess.file_exists(path):
		return true
	else:
		return false
	

func save(world_name):
	world_data = WorldData.new()
	world_data.world_name = world_name
	var path = world_path(world_name)
			
	var error = ResourceSaver.save(world_data, path)
	# Check for errors
	if error == OK:
		print("Saved successfully!")
	else:
		print("Failed to save with error code: ", error)

func load(world_name):
	var path = world_path(world_name)
	world_data = ResourceLoader.load(path)

func initialize():
	print(self.world_name)
	
	var dir = DirAccess.open(base_path)
	if dir.dir_exists(worlds_path):
		print("Cant make worlds directory as it already exists")
	else:
		var make_dir = dir.make_dir("worlds")
		if make_dir == OK:
			print("Made Worlds directory")
		else:
			print("Could not make Worlds directory")
	if does_exist(self.world_name):
		load(self.world_name)
		print("Loaded World " + self.world_name)
	else:
		save(self.world_name)
		print("Saved World " + self.world_name)
	
