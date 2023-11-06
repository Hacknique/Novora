extends StaticBody3D
class_name Voxel

## Sets The Atlas Texture for the Voxel
func set_texture(atlas_texture: String):
	var material = self.get_node("Texture").get_active_material(0) 
	
	var tex = load(atlas_texture)
	material.set_shader_parameter("albedo_texture", tex)

func set_brightness(brightness: float):
	var material = self.get_node("Texture").get_active_material(0) 
	material.set_shader_parameter("brightness", brightness)

func set_highlighted(is_highlighted: bool):
	if is_highlighted:
		set_brightness(Game.VOXEL_HIGHLIGHTED_BRIGHTNESS)
	else:
		set_brightness(1.0)

func _ready():
	set_texture("res://assets/Voxel/voxel_texture_atlas.webp")
	set_highlighted(true)
	

