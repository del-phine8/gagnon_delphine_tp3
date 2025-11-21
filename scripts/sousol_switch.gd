extends Area2D


func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		body.set_position($Marker2D3.global_position)
		var cam = body.get_node_or_null("camera1")  # <-- adjust this name/path!
		if cam:
			cam.make_current()
			cam.limit_left = -405
			cam.limit_right = 3490
			cam.limit_top = 5005
			cam.limit_bottom = 7765
