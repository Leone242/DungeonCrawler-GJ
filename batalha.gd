extends Node2D

var zombarias = 0

var textoDescricao = ""

var diabo: Area2D

@export var porta1: StaticBody2D
@export var porta2: StaticBody2D
@export var porta3: StaticBody2D
@export var porta4: StaticBody2D
@export var porta5: StaticBody2D
@export var porta6: StaticBody2D

var porta: int

func _on_trocadilho_pressed():
	zombarias+=1
	
	$Control/Trocadilho.disabled = true
	$Control/Zoar.disabled = true
	$Control/Fugir.disabled = true
	if zombarias >= 3:
		textoDescricao = "Você venceu e uma porta se abriu"
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
	$descDemo.text = "descrição do trocadilho"

func _on_zoar_mouse_entered():
	$descDemo.text = "descrição da zoeira"
	
func _on_zoar_mouse_exited():
	$descDemo.text = textoDescricao

func _on_trocadilho_mouse_exited():
	$descDemo.text = textoDescricao

func _on_fugir_mouse_entered():
	$descDemo.text = "Sair voado"

func _on_fugir_mouse_exited():
	$descDemo.text = textoDescricao


func _on_area_demo_a_body_entered(body):
	textoDescricao = "Descrição do caramunhão"
	if body.name == "Player":
		diabo = $"../../AreaDemoA"
		porta = 2
		self.show()
		$SpriteDemoA.show()
		zombarias = 0
	
func _on_area_demo_b_body_entered(body):
	textoDescricao = "Descrição do capiroto"
	if body.name == "Player":
		diabo = $"../../AreaDemoB"
		porta = 4
		self.show()
		$SpriteDemoB.show()
		zombarias = 0

func _on_area_demo_c_body_entered(body):
	textoDescricao = "Descrição do tinhoso"
	if body.name == "Player":
		diabo = $"../../AreaDemoC"
		porta = 1
		self.show()
		$SpriteDemoC.show()
		zombarias = 0




func _on_area_demo_master_body_entered(body):
	textoDescricao = "Descrição do demônio mais pika dessa dungeon"
	if body.name == "Player":
		diabo = $"../../AreaDemoMaster"
		porta = 5
		await get_tree().create_timer(0.5).timeout
		$"../../AreaDemoMaster/LuzBoss".show()
		await get_tree().create_timer(1.0).timeout
		self.show()
		$SpriteDemoElderich.show()
		zombarias = 0
	
func abrirPorta(porta: int):
	match porta:
		1: porta1.queue_free()
		2: 
			porta2.queue_free()
			porta3.queue_free()
		3: porta3.queue_free()
		4: porta4.queue_free()
		5: 
			porta5.queue_free()
			porta6.queue_free()
		6: porta6.queue_free()
		
func vencer():
	abrirPorta(porta)
	$descDemo.text = "você venceu e uma porta se abriu"
	await get_tree().create_timer(3.0).timeout
	diabo.queue_free()
	$SpriteDemoA.hide()
	$SpriteDemoB.hide()
	$SpriteDemoC.hide()
	reiniciar()
	hide()
	
func turnoOponente():
	$descDemo.text = "o sete pele atacou causando dano"
	await get_tree().create_timer(2.0).timeout
	$descDemo.text = textoDescricao
	$Control/Trocadilho.disabled = false
	$Control/Zoar.disabled = false
	$Control/Fugir.disabled = false
	
func reiniciar():
	$descDemo.text = "Você esbarrou num capeta"
	$Control/Trocadilho.disabled = false
	$Control/Zoar.disabled = false
	$Control/Fugir.disabled = false
