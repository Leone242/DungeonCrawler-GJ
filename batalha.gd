extends Node2D

var zombarias = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_trocadilho_pressed():
	zombarias+=1
	
	if zombarias >= 3:
		vencer()
	


func _on_zoar_pressed():
	zombarias+=1
	if zombarias >= 3:
		vencer()

func _on_fugir_pressed():
	self.hide()
	zombarias = 0



func _on_trocadilho_mouse_entered():
	$Control/Trocadilho/descTrocadilho.show()
	$descDemo.hide()

func _on_zoar_mouse_entered():
	$Control/Zoar/descZoar.show()
	$descDemo.hide()
func _on_zoar_mouse_exited():
	$Control/Zoar/descZoar.hide()
	$descDemo.show()

func _on_trocadilho_mouse_exited():
	$Control/Trocadilho/descTrocadilho.hide()
	$descDemo.show()

func _on_fugir_mouse_entered():
	$Control/Fugir/descFugir.show()
	$descDemo.hide()

func _on_fugir_mouse_exited():
	$Control/Fugir/descFugir.hide()
	$descDemo.show()


func _on_area_demo_a_body_entered(body):
	self.show()
	get_node("descDemo").text = "Descrição do caramunhão"
	$SpriteDemoA.show()
	zombarias = 0
	
func _on_area_demo_b_body_entered(body):
	self.show()
	get_node("descDemo").text = "Descrição do capiroto"
	$SpriteDemoB.show()
	zombarias = 0

func _on_area_demo_c_body_entered(body):
	self.show()
	get_node("descDemo").text = "Descrição do tinhoso"
	$SpriteDemoC.show()
	zombarias = 0




func _on_area_demo_master_body_entered(body):
	await get_tree().create_timer(0.5).timeout
	$"../../AreaDemoMaster/LuzBoss".show()
	await get_tree().create_timer(2.0).timeout
	self.show()
	get_node("descDemo").text = "Descrição do demônio mais pika dessa dungeon"
	$SpriteDemoElderich.show()
	zombarias = 0
	
func abrirPorta(porta: int):
	match porta:
		1: get_tree().get_node("../../Portas/Porta1").hide()
		2: pass
		3: pass
		4: pass
		5: pass
		6: pass
		
func vencer():
	pass
	
