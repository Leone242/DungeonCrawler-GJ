extends StaticBody2D

func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()



func _on_area_2d_body_entered(body):
	if body.name == "Player":
		$CanvasLayer/Panel.show()
		$CanvasLayer/Panel/Label.show()
		await get_tree().create_timer(5.5).timeout
		$CanvasLayer/Panel/Label.hide()
		$CanvasLayer/Panel/Label2.show()
		await get_tree().create_timer(6.0).timeout
		$CanvasLayer/Panel/Label2.hide()
		$CanvasLayer/Panel/Label3.show()
		await get_tree().create_timer(7.0).timeout
		$CanvasLayer/Panel/Label3.hide()
		$CanvasLayer/Panel/Label4.show()
		await get_tree().create_timer(2.0).timeout
		$CanvasLayer/Panel/Label4.hide()
		$CanvasLayer/Panel/Label5.show()
		await get_tree().create_timer(6.0).timeout
		$CanvasLayer/Panel.hide()
		$CanvasLayer/Panel/Label5.hide()
