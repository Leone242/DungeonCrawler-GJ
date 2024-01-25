extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_trocadilho_pressed():
	pass # Replace with function body.


func _on_zoar_pressed():
	pass # Replace with function body.


func _on_fugir_pressed():
	self.hide()


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
	
func _on_area_demo_b_body_entered(body):
	self.show()
	get_node("descDemo").text = "Descrição do capiroto"

func _on_area_demo_c_body_entered(body):
	self.show()
	get_node("descDemo").text = "Descrição do tinhoso"


