extends Button


func _on_pressed():
	self.get_parent().get_parent().get_parent().get_parent().queue_free()
