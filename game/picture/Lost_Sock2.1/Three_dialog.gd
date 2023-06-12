extends Control


var dialog = [
	'Sock: Ti ne ona..',
	'Another Sock: Spasibo, chto spas menya!',
	'Another Sock: Daje ne znayu kak popal suda',
	'Another Sock: Chem mogu pomoch?',
	'Sock: Ya ishu svoiyu paru',
	'Sock: Ti ne videl eyo?',
	'Another Sock: K sojaleniyu, ya ne pomogu tebe s etim pomoch..',
	'Another Sock: No vozmojno, chto eyo utashil kot k sebe v domik',
	'Sock: Spasibo bolshoe, poidu iskat dalshe'
	
	
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
		$Tween3.interpolate_property(
			$RichTextLabel,"percent_visible" , 0,1,1,
			Tween.TRANS_LINEAR, Tween.EASE_IN_OUT
		)
		$Tween3.start()
	else: 
		queue_free()
	dialog_index += 1
	
	

func _on_Tween3_tween_completed(object, key):
	
	finished = true
