extends Area2D

@onready var keymessage =$TextureRect

func _ready():
	keymessage.visible = false

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		keymessage.visible = true 


func _on_body_exited(body: Node2D) -> void:
	if body.is_in_group("player"):
		keymessage.visible = false  
