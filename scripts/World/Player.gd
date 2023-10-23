extends CharacterBody3D

var speed = 5.0
var mouse_sensitivity = 0.1
var pitch = 0.0
var yaw = 0.0

# Preload the escape menu scene
var escape_menu_scene = preload("res://scenes/World/UserInterface/EscapeMenu.tscn")
var escape_menu_instance = null

# Jump and gravity variables
var gravity = -9.8
var jump_speed = 5.0
var is_jumping = false

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
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func _process(delta):
	var direction = Vector3.ZERO
	
	if Input.is_action_pressed("ui_up"):
		direction.z -= 1
	if Input.is_action_pressed("ui_down"):
		direction.z += 1
	if Input.is_action_pressed("ui_left"):
		direction.x -= 1
	if Input.is_action_pressed("ui_right"):
		direction.x += 1

	direction = direction.normalized()
	self.translate(direction * speed * delta)
	
	if Input.is_action_just_pressed("ui_pause"):
		toggle_escape_menu()

func _input(event):
	if event is InputEventMouseMotion and !escape_menu_instance:
		yaw -= mouse_sensitivity * event.relative.x
		pitch -= mouse_sensitivity * event.relative.y
		pitch = clamp(pitch, -70, 70)
		
		var rotation = Vector3(0, yaw, 0)
		self.rotation_degrees = rotation
		self.get_node("Camera").rotation_degrees.x = pitch

func _physics_process(delta):
	# Apply gravity
	if !is_on_floor():
		velocity.y += gravity * delta
	else:
		velocity.y = 0
		is_jumping = false

	# Handle jump input
	if Input.is_action_just_pressed("ui_jump") and !is_jumping:
		velocity.y = jump_speed
		is_jumping = true
	
	# Update the position using move_and_slide
	move_and_slide()

