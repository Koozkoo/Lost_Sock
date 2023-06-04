extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

var i: int=0;
var u;
var t=true;
var f=false;
func tru(u):
	u.visible=t;
func fa(u):
	u.visible=f;
func pruv(i):
	var but=[$k1, $k2,$k3,$k4,$k5,$k6,$k7,$k8,$k9,$k10,$k11,$k12,$l1, $l2,$l3,$l4,$l5,$l6,$l7,$l8,$l9,$l10,$l11,$l12];
	var mas=0;
	var winner=1;
	if(i==1) or (i==6) or (i==11):
		if ($l1.visible==t) or ($l6.visible==t) or ($l11.visible==t):
			fa($l1);
			fa($l6)
			fa($l11);
		else :
			tru($l1);
			tru($l6);
			tru($l11);
	if(i==2) or (i==7) or (i==12):
		if ($l2.visible==t) or ($l7.visible==t) or ($l12.visible==t):
			fa($l2);
			fa($l7)
			fa($l12);
		else :
			tru($l2);
			tru($l7);
			tru($l12);
	if(i==3) or (i==8):
		if ($l3.visible==t) or ($l8.visible==t):
			fa($l3);
			fa($l8)
		else :
			tru($l3);
			tru($l8);
	if(i==5) or (i==10):
		if ($l5.visible==t) or ($l10.visible==t):
			fa($l5);
			fa($l10)
		else :
			tru($l5);
			tru($l10);
	if(i==4) or (i==9):
		if ($l4.visible==t) or ($l9.visible==t):
			fa($l4);
			fa($l9)
		else :
			tru($l4);
			tru($l9);
	if(i==13) or (i==18) or (i==23):
		if ($k1.visible==t) or ($k6.visible==t) or ($k11.visible==t):
			fa($k1);
			fa($k6)
			fa($k11);
		else :
			tru($k1);
			tru($k6);
			tru($k11);
	if(i==14) or (i==19) or (i==24):
		if ($k2.visible==t) or ($k7.visible==t) or ($k12.visible==t):
			fa($k2);
			fa($k7)
			fa($k12);
		else :
			tru($k2);
			tru($k7);
			tru($k12);
	if(i==15) or (i==20):
		if ($k3.visible==t) or ($k8.visible==t):
			fa($k3);
			fa($k8)
		else :
			tru($k3);
			tru($k8);
	if(i==17) or (i==22):
		if ($k5.visible==t) or ($k10.visible==t):
			fa($k5);
			fa($k10)
		else :
			tru($k5);
			tru($k10);
	if(i==16) or (i==21):
		if ($k4.visible==t) or ($k9.visible==t):
			fa($k4);
			fa($k9)
		else :
			tru($k4);
			tru($k9);
	while mas!=but.size():
		var h=but[mas];
		if(h.visible==t):
			winner=winner+1;
		mas=mas+1;
		if winner==24:
			$TextureRect.visible=false;
func _on_but_pressed():
	pruv(1);
func _on_but_2_pressed():
	pruv(2);
func _on_but_3_pressed():
	pruv(3);
func _on_but_4_pressed():
	pruv(4);
func _on_but_5_pressed():
	pruv(5);
func _on_but_6_pressed():
	pruv(6);
func _on_but_7_pressed():
	pruv(7);
func _on_but_8_pressed():
	pruv(8);
func _on_but_9_pressed():
	pruv(9);
func _on_but_10_pressed():
	pruv(10);
func _on_but_11_pressed():
	pruv(11);
func _on_but_12_pressed():
	pruv(12);
func _on_but_13_pressed():
	pruv(13);
func _on_but_14_pressed():
	pruv(14);
func _on_but_15_pressed():
	pruv(15);
func _on_but_16_pressed():
	pruv(16);
func _on_but_17_pressed():
	pruv(17);
func _on_but_18_pressed():
	pruv(18);
func _on_but_19_pressed():
	pruv(19);
func _on_but_20_pressed():
	pruv(20);
func _on_but_21_pressed():
	pruv(21);
func _on_but_22_pressed():
	pruv(22);
func _on_but_23_pressed():
	pruv(23);
func _on_but_24_pressed():
	pruv(24);
	
