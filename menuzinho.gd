extends Node2D



func _on_continuar_pressed():
	hide()


func _on_reiniciar_pressed():
	get_tree().reload_current_scene()


func _on_volta_menu_pressed():
	get_tree().change_scene_to_file("res://menu.tscn")


func _on_sair_pressed():
	await get_tree().create_timer(0.5).timeout
	get_tree().quit()
