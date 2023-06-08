extends Area2D



func _on_Cat_body_entered(body):
	if body.name =="Sock":
		body.ApplyDMG(100)
	pass 
	
	
func _physics_process(delta):
	
	$AnimatedSprite2D.play("walk")
	
	
	
func _ready():
	$AnimationPlayer.play("Angry")




func _on_Stirka_body_entered(body):
	pass # Replace with function body.
