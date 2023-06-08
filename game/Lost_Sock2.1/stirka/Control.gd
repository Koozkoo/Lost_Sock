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
	var but=[$le1, $le2,$le3,$le4,$le5,$le6,$le7,$le8,$le9,$le10,$le11,$le12,$le13, $le14,$le15,$le16,$le17,$le18,$le19,$le20,$le21,$le22,$le23,$le24];
	var mas=0;
	var winner=1;
	if(i==1) or (i==6) or (i==11):
		if ($le1.visible==t) or ($le6.visible==t) or ($le11.visible==t):
			fa($le1);
			fa($le6)
			fa($le11);
		else :
			tru($le1);
			tru($le6);
			tru($le11);
	if(i==2) or (i==7) or (i==12):
		if ($le2.visible==t) or ($le7.visible==t) or ($le12.visible==t):
			fa($le2);
			fa($le7)
			fa($le12);
		else :
			tru($le2);
			tru($le7);
			tru($le12);
	if(i==3) or (i==8):
		if ($le3.visible==t) or ($le8.visible==t):
			fa($le3);
			fa($le8)
		else :
			tru($le3);
			tru($le8);
	if(i==5) or (i==10):
		if ($le5.visible==t) or ($le10.visible==t):
			fa($le5);
			fa($le10)
		else :
			tru($le5);
			tru($le10);
	if(i==4) or (i==9):
		if ($le4.visible==t) or ($le9.visible==t):
			fa($le4);
			fa($le9)
		else :
			tru($le4);
			tru($le9);
	if(i==13) or (i==18) or (i==23):
		if ($le13.visible==t) or ($le18.visible==t) or ($le23.visible==t):
			fa($le13);
			fa($le18)
			fa($le23);
		else :
			tru($le13);
			tru($le18);
			tru($le23);
	if(i==14) or (i==19) or (i==24):
		if ($le14.visible==t) or ($le19.visible==t) or ($le24.visible==t):
			fa($le14);
			fa($le19)
			fa($le24);
		else :
			tru($le14);
			tru($le19);
			tru($le24);
	if(i==15) or (i==20):
		if ($le15.visible==t) or ($le20.visible==t):
			fa($le15);
			fa($le20)
		else :
			tru($le15);
			tru($le20);
	if(i==17) or (i==22):
		if ($le17.visible==t) or ($le22.visible==t):
			fa($le17);
			fa($le22)
		else :
			tru($le17);
			tru($le22);
	if(i==16) or (i==21):
		if ($le16.visible==t) or ($le21.visible==t):
			fa($le16);
			fa($le21)
		else :
			tru($le16);
			tru($le21);
	while mas!=but.size():
		var h=but[mas];
		if(h.visible==t):
			winner=winner+1;
		mas=mas+1;
		if winner==24:
			get_tree().change_scene("res://Scence/Map2.tscn")
func _on_k1_pressed():
	pruv(1);
func _on_k2_pressed():
	pruv(2);
func _on_k3_pressed():
	pruv(3);
func _on_k4_pressed():
	pruv(4);
func _on_k5_pressed():
	pruv(5);
func _on_k6_pressed():
	pruv(6);
func _on_k7_pressed():
	pruv(7);
func _on_k8_pressed():
	pruv(8);
func _on_k9_pressed():
	pruv(9);
func _on_k10_pressed():
	pruv(10);
func _on_k11_pressed():
	pruv(11);
func _on_k12_pressed():
	pruv(12);
func _on_l13_pressed():
	pruv(13);
func _on_l14_pressed():
	pruv(14);
func _on_l15_pressed():
	pruv(15);
func _on_l16_pressed():
	pruv(16);
func _on_l17_pressed():
	pruv(17);
func _on_l18_pressed():
	pruv(18);
func _on_l19_pressed():
	pruv(19);
func _on_l20_pressed():
	pruv(20);
func _on_l21_pressed():
	pruv(21);
func _on_l22_pressed():
	pruv(22);
func _on_l23_pressed():
	pruv(23);
func _on_l24_pressed():
	pruv(24);
	
