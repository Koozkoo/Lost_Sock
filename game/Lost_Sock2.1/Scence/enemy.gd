extends Area2D


func _on_enemy_body_entered(body):
	if body.name =="Sock":
		body.damage(30)
	pass 
	
func _physics_process(delta):
	
	$AnimatedSprite.play("run")
	
	
	
func _ready():
	$AnimationPlayer.play("run")


