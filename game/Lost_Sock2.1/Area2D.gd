extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Sg_body_entered(body):
	if Input.is_action_just_pressed("ui_up"):
		get_tree().change_scene("res://stirka/stirka.tscn")
		

	pass # Replace with function body.
