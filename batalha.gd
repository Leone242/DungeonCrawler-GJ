extends Node2D

var zombarias = 0


@export var porta1: StaticBody2D
@export var porta2: StaticBody2D
@export var porta3: StaticBody2D
@export var porta4: StaticBody2D
@export var porta5: StaticBody2D
@export var porta6: StaticBody2D


func _on_trocadilho_pressed():
	zombarias+=1
	
	$Control/Trocadilho.disabled = true
	$Control/Zoar.disabled = true
	$Control/Fugir.disabled = true
	if zombarias == 3:
		vencer()
	else:
		await get_tree().create_timer(1.0).timeout
		turnoOponente()
	


func _on_zoar_pressed():
	zombarias+=1
	
	$Control/Trocadilho.disabled = true
	$Control/Zoar.disabled = true
	$Control/Fugir.disabled = true
	if zombarias == 3:
		vencer()
	else:
		await get_tree().create_timer(1.0).timeout
		turnoOponente()
	

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
	if body.name == "Player":
		self.show()
		get_node("descDemo").text = "Descrição do caramunhão"
		$SpriteDemoA.show()
		zombarias = 0
	
func _on_area_demo_b_body_entered(body):
	if body.name == "Player":
		self.show()
		get_node("descDemo").text = "Descrição do capiroto"
		$SpriteDemoB.show()
		zombarias = 0

func _on_area_demo_c_body_entered(body):
	if body.name == "Player":
		self.show()
		get_node("descDemo").text = "Descrição do tinhoso"
		$SpriteDemoC.show()
		zombarias = 0




func _on_area_demo_master_body_entered(body):
	if body.name == "Player":
		await get_tree().create_timer(0.5).timeout
		$"../../AreaDemoMaster/LuzBoss".show()
		await get_tree().create_timer(1.0).timeout
		self.show()
		get_node("descDemo").text = "Descrição do demônio mais pika dessa dungeon"
		$SpriteDemoElderich.show()
		zombarias = 0
	
func abrirPorta(porta: int):
	match porta:
		1: porta1.queue_free()
		2: porta2.queue_free()
		3: porta3.queue_free()
		4: porta4.queue_free()
		5: porta5.queue_free()
		6: porta6.queue_free()
		
func vencer():
	abrirPorta(4)
	$descDemo.text = "você venceu e uma porta se abriu"
	await get_tree().create_timer(3.0).timeout
	hide()
	
func turnoOponente():
	$descDemo.text = "o sete pele atacou causando dano"
	await get_tree().create_timer(2.0).timeout
	$Control/Trocadilho.disabled = false
	$Control/Zoar.disabled = false
	$Control/Fugir.disabled = false
	
