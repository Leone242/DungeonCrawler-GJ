extends CharacterBody2D


var speed = 200


func _physics_process(delta):
	var input_vector = Vector2.ZERO

	input_vector.x = Input.get_action_strength("right") - Input.get_action_strength("left")
	input_vector.y = Input.get_action_strength("down") - Input.get_action_strength("up")

	input_vector = input_vector.normalized()
	position += input_vector * speed * delta
	move_and_slide()


