extends StaticBody3D
class_name Voxel

## Sets The Atlas Texture for the Voxel
func set_texture(atlas_texture: String):
    var material = self.get_node("Texture").get_active_material(0)

    var tex = load(atlas_texture)
    material.set_shader_parameter("atlas_texture", tex)


func _ready():
    set_texture("res://assets/Voxel/voxel_texture_atlas.webp")

