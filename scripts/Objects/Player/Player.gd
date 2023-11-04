class_name Player
extends CharacterBody3D

signal ready_signal
@export_category("Player Properties")
@export_group("Physics")
@export var _jump_force: float = 8.0
@export var _gravity: float = ProjectSettings.get_setting("physics/3d/default_gravity", 9.8)
@export_group("Controls")
@export var _mouse_sensitivity: float = 0.1
@export_subgroup("Speed")
@export var _speed_sprint: float = 7.0
@export var _speed_walk: float = 5.0
@export var _speed_crouch: float = 3.5

# Private variables
var _movement_speed: float = _speed_walk

# Body parts
@onready var neck: Node3D = self.get_node("CameraPivot")
@onready var eyes: Camera3D = self.get_node("CameraPivot/Camera3D")

# Preload the escape menu scene
var escape_menu_scene = preload("res://scenes/Universe/UserInterface/EscapeMenu.tscn")
var escape_menu_instance = null

func _init(name="singleplayer"):
	self.name = name

func toggle_escape_menu():
	if !escape_menu_instance:
		# Instance and add the escape menu to the scene
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
		escape_menu_instance = escape_menu_scene.instantiate()
		self.add_child(escape_menu_instance)
	else:
		# If already present, free the instance and set the variable to null
		Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
		escape_menu_instance.queue_free()
		escape_menu_instance = null

func _ready():
	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED

func _process(delta):
	if Input.is_action_just_pressed("ui_cancel"):
		toggle_escape_menu()
			

func _physics_process(delta):
	self.move_and_slide()

	if Input.is_action_pressed("p_sprint"):
		self._movement_speed = self._speed_sprint
	elif Input.is_action_pressed("p_crouch"):
		self._movement_speed = self._speed_crouch
	else:
		self._movement_speed = self._speed_walk

	if not self.is_on_floor():
		self.velocity.y += (-self._gravity * 2) * delta

	if Input.is_action_pressed("p_jump") and self.is_on_floor():
		self.velocity.y = _jump_force

	var input_dir = Input.get_vector("p_left", "p_right", "p_forward", "p_backward")
	var direction = (self.transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
	if direction:
		self.velocity.x = direction.x * _movement_speed
		self.velocity.z = direction.z * _movement_speed
	else:
		self.velocity.x = 0
		self.velocity.z = 0

func _input(event):
	if event is InputEventMouseMotion and !escape_menu_instance:
		self.rotate_y(deg_to_rad(-event.relative.x * _mouse_sensitivity))
		self.neck.rotate_x(deg_to_rad(-event.relative.y * _mouse_sensitivity))
		self.neck.rotation.x = clampf(self.neck.rotation.x, deg_to_rad(-89), deg_to_rad(89))

