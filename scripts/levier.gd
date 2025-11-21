extends Area2D



var player_in_area = false

func _on_body_entered(body):
	if body.is_in_group("player"):
		player_in_area = true

func _on_body_exited(body):
	if body.is_in_group("player"):
		player_in_area = false

func _process(_delta):
	if player_in_area and Input.is_action_pressed("levier_ouvert"):
		$son_levier.play()
		$levier.play("levier_o")
		$"../AnimatedSprite2D".play("door_opened")
		$"../sound_door".play()
		$"../CollisionDoor".disabled = true 
		$"../player_detecter/CollisionShape2D".disabled = true 
