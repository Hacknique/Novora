class_name PlayerData

@export var position : Vector3
@export var name : String

func to_dict():
	return {
		"position": position,
		"name": name
	}

func from_dict(data):
	position = data["position"]
	name = data["name"]
