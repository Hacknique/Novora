extends Node3D

var world_name

func initialize():
	print(self.world_name)
	var world_data = WorldData.new()
	world_data.world_name = self.world_name

	# Use ResourceSaver to save the resource to a file
	var base_path = "user://"
	var worlds_path = base_path + "worlds/"
	var path = worlds_path + self.world_name + ".tres"
	print(path)
	
	var dir = DirAccess.open(base_path)
	if dir.dir_exists(worlds_path):
		print("Cant make worlds directory as it already exists")
	else:
		var make_dir = dir.make_dir("worlds")
		if make_dir == OK:
			print("Made Worlds directory")
		else:
			print("Could not make Worlds directory")
			
	var error = ResourceSaver.save(world_data, path)
	# Check for errors
	if error == OK:
		print("Saved successfully!")
	else:
		print("Failed to save with error code: ", error)
