extends RigidBody3D

func set_texture(front: String, back: String, top: String, bottom: String, left: String, right: String):
	var sides = [front, back, top, bottom, left, right]
	var shader_param_names = ["texture_front", "texture_back", "texture_top", "texture_bottom", "texture_left", "texture_right"]
	
	var material = self.get_node("Texture").material_override  # Assuming the material is on surface 0
	
	for i in range(6):
		var tex = load(sides[i])
		material.set_shader_parameter(shader_param_names[i], tex)


func _ready():
	set_texture("res://assets/Voxel/test_texture.png",
				"res://assets/Voxel/test_texture.png",
				"res://assets/Voxel/test_texture.png",
				"res://assets/Voxel/test_texture.png",
				"res://assets/Voxel/test_texture.png",
				"res://assets/Voxel/test_texture.png")
