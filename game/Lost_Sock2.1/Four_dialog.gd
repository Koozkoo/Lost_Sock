extends Control


var dialog = [
	'Sock: Nakonec to ya tebya nashyol!',
	'G-Sock: Spasibo, chto spas menya!',
	'G-Sock: A gde eshyo odin nosok?',
	'Sock: Kakoi?',
	'G-Sock: Nash tretiy nosok',
	'Sock: V smisle tretiy..?',
	'G-Sock: Posle stirki ti vsyo zabil..nas troe',
	'Sock: Togda srochno nujno eyo naiti!!!',
	
	
	
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
		$Tween4.interpolate_property(
			$RichTextLabel,"percent_visible" , 0,1,1,
			Tween.TRANS_LINEAR, Tween.EASE_IN_OUT
		)
		$Tween4.start()
	else: 
		queue_free()
	dialog_index += 1
	
	

func _on_Tween4_tween_completed(object, key):
	
	finished = true
