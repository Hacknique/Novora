extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_item_selected(index):
	%DeleteWorldBtn.disabled = false
	%PlayWorldBtn.disabled = false


func _on_empty_clicked(at_position, mouse_button_index):
	%DeleteWorldBtn.disabled = true
	%PlayWorldBtn.disabled = true
	%WorldList.deselect_all()
