extends Control
var dialog = [
	'*Vidit siluet v mikrovolnovke*',
	'Sock: Kto v mikrovolnovke?',
	'Sock: Ya spasu tebya!!!',
	
	
]
var dialog_index = 0
var finished = false


func _ready():
	load_dialog()
	
func _physics_process(delta):
	$"Ind".visible = finished
	if Input.is_action_just_pressed("ui_accept"):
		load_dialog()
	
func load_dialog():
	if dialog_index < dialog.size():
		finished = false
		$RichTextLabel.bbcode_text = dialog[dialog_index]
		$RichTextLabel.percent_visible = 0
		$Tween2.interpolate_property(
			$RichTextLabel,"percent_visible" , 0,1,1,
			Tween.TRANS_LINEAR, Tween.EASE_IN_OUT
		)
		$Tween2.start()
	else: 
		queue_free()
	dialog_index += 1
	
	

func _on_Tween2_tween_completed(object, key):
	
	finished = true
