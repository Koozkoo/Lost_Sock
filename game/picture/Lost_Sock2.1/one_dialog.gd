extends Control
var dialog = [
	'Sock: Gde ya?',
	'Sock: Kto ya?',
	'Sock: Vspomnil..no pochemu ya zdes odin?',
	'Sock: Ya nadeyalsa, chto so mnoi etogo nikogda ne sluchitsya..',
	'Sock: Nujno srochno naiti moyu paru!!!',
	'*zvuki iz stiralnoi mashinki*',
	'Someone: Kto zdes?'
	
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
		$Tween1.interpolate_property(
			$RichTextLabel,"percent_visible" , 0,1,1,
			Tween.TRANS_LINEAR, Tween.EASE_IN_OUT
		)
		$Tween1.start()
	else: 
		queue_free()
	dialog_index += 1
	



func _on_Tween1_tween_completed(object, key):
	finished = true
