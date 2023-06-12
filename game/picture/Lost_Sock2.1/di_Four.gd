extends Area2D


var can_interact = false
const DIALOG = preload("res://Four_dialog.tscn")

func _on_di_Four_body_entered(body):
	if body.name == "Sock":
		$Label.visible=true
		can_interact = true


func _on_di_Four_body_exited(body):
	if body.name == "Sock":
		$Label.visible = false
		can_interact = false
		
		
func _input(event):
	if Input.is_key_pressed(KEY_E) and can_interact == true:
		$Label.visible = false
		var dialog = DIALOG.instance()
		get_parent().add_child(dialog)
