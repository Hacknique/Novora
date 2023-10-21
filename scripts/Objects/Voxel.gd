extends StaticBody3D
class_name Voxel

func set_texture(atlas_texture: String):
	var material = self.get_node("Texture").get_active_material(0)  # Assuming the material is on surface 0
	
	var tex = load(atlas_texture)
	material.set_texture(0, tex)


func _ready():
	set_texture("res://assets/Voxel/voxel_texture_atlas.svg")
