extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func _on_chefe_body_entered(body):
	if body.name == "Player":
		$PointLight2D.show()
		await get_tree().create_timer(3)
		$CanvasLayer/Batalha.show()
		
		#get_node("descDemo").text = "Descrição do demônio mais pika dessa dungeon"


func _on_chefe_body_exited(body):
	self.hide()
