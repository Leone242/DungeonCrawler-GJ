extends Node2D


func _ready():
	Iniciar()
	
func Iniciar():
	await get_tree().create_timer(2.0).timeout
	$Aviso.show()
	await get_tree().create_timer(4.5).timeout
	$Falas.show()
	$Falas/Fala1.show()
	await get_tree().create_timer(3.5).timeout
	$Falas/Fala1.hide()
	$Falas/Fala2.show()
	await get_tree().create_timer(3.5).timeout
	$Falas/Fala2.hide()
	$Falas/Fala3.show()
	await get_tree().create_timer(3.5).timeout
	$Falas/Fala3.hide()
	$Falas/Fala4.show()
	await get_tree().create_timer(4.5).timeout
	$Falas/Fala4.hide()
	$Falas/Fala5.show()
	await get_tree().create_timer(2.0).timeout
	self.hide()
	
