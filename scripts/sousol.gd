extends Area2D



func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		$"../StaticBody2D/bloque_maison".call_deferred("set_disabled", false)
		$"../transition1".show()
		$"../transition1".play("transition")
		body.set_position($Marker2D.global_position)
		$"../StaticBody2D/bloque_maison".disabled = false 
		var cam = body.get_node_or_null("camera1")  # <-- adjust this name/path!
		if cam:
			cam.make_current()
			cam.limit_left = 8800
			cam.limit_right = 12635
			cam.limit_top = 1415
			cam.limit_bottom = 4235
		await get_tree().create_timer(3.0).timeout
		$"../StaticBody2D/bloque_maison".call_deferred("set_disabled", true) 
			
		
		
		
		
		 
		
		
