extends Node2D


func _on_jogar_pressed():
	get_tree().change_scene_to_file("res://cenario.tscn")


func _on_opções_pressed():
	pass # Replace with function body.


func _on_sair_pressed():
	await get_tree().create_timer(0.5).timeout
	get_tree().quit()
