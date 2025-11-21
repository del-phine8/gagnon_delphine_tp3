extends StaticBody2D


func _on_player_detecter_body_entered(body: Node2D) -> void:
	if body.name == "player":
		$AnimatedSprite2D.play("door_opened")
		$sound_door.play()
		await $AnimatedSprite2D.animation_finished
		$CollisionDoor.disabled = true
		await get_tree().create_timer(3).timeout
		$AnimatedSprite2D.play("door_closed")
		$sound_door_2.play()
		await $AnimatedSprite2D.animation_finished
		$CollisionDoor.disabled = false
