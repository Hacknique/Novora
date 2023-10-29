extends Node3D

var world_name
var world_data
var VoxelScene = preload("res://scenes/Objects/Voxel.tscn")

func _on_ready():
    self.world_name = Game.current_world_name
    print(self.world_name)
    var world = World.new(self.world_name)
    world_data = world.data
    world.load_or_save()

    # Create an instance of the scene
    var voxel_instance = VoxelScene.instantiate()

    # Add the instance to the current scene
    add_child(voxel_instance)
