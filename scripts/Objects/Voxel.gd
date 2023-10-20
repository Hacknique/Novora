extends RigidBody3D

func set_texture(front: String, back: String, top: String, bottom: String, left: String, right: String):
	var sides = [front, back, top, bottom, left, right]
	for i in range(6):
		var tex = load(sides[i])
		var mat = StandardMaterial3D.new()
		mat.albedo_texture = tex
		self.get_node("Texture").set_surface_override_material(i, mat)

func _ready():
	set_texture("res://assets/Voxel/no_texture.png",
				"res://assets/Voxel/no_texture.png",
				"res://assets/Voxel/no_texture.png",
				"res://assets/Voxel/no_texture.png",
				"res://assets/Voxel/no_texture.png",
				"res://assets/Voxel/no_texture.png")
