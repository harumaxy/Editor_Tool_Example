tool
extends Area2D

var previous_position = Vector2(0,0)

export(bool) var reset_to_zero = false setget reset_zero

func reset_zero(new_val):
	if (Engine.is_editor_hint()):
		if(new_val == true):
			previous_position = position
			self.position = Vector2(0, 0)
			reset_to_zero = true
		else:
			self.position = previous_position
			reset_to_zero = false
		
		


func _on_Area2D_input_event(viewport: Node, event: InputEvent, shape_idx: int):
	if event:
		print(event)
