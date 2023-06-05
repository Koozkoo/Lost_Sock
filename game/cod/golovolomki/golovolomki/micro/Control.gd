extends Control
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	pass
	
var it:int=0;
func micro(it):
	var mic=[$cif12k,$cif06k,$cif16k,$cif30k,$cif26k,$cif02k,$cif18k];
	var mad=0;
	while mad<mic.size():
		var kl=mic[mad];
		if mad==it:
			kl.visible=true;
		else:
			kl.visible=false;
		mad=mad+1;
	if it==2:
		$micro_pic.visible=false;
	

func _on_12_pressed():
	micro(0);
func _on_06_pressed():
	micro(1);
func _on_16_pressed():
	micro(2);
func _on_30_pressed():
	micro(3);
func _on_26_pressed():
	micro(4);
func _on_02_pressed():
	micro(5);
func _on_18_pressed():
	micro(6);
