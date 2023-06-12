extends Area2D






func _on_Scissors_body_entered(body):
	if body.name=="Sock":
		body.Scissors += 1
		queue_free()
	
	pass # Replace with function body.
