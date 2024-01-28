extends CharacterBody2D


var speed = 200

func _process(delta):
	if Input.is_action_just_pressed("esque"):
		$"../CanvasLayer/Menuzinho".show()
		speed = 0

func _physics_process(delta):
	var input_vector = Vector2.ZERO

	input_vector.x = Input.get_action_strength("right") - Input.get_action_strength("left")
	input_vector.y = Input.get_action_strength("down") - Input.get_action_strength("up")

	input_vector = input_vector.normalized()
	position += input_vector * speed * delta
	move_and_slide()



func _on_batalha_draw():
	speed = 0


func _on_batalha_hidden():
	speed = 200


func _on_menuzinho_hidden():
	speed = 200


func _on_panel_draw():
	speed = 0
	

func _on_panel_hidden():
	speed = 200
