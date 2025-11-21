extends Area2D

var player_in_area = false
@onready var q = $Label_q


func _ready():
	q.visible = false

func _on_body_entered(body):
	if body.is_in_group("player"):
		player_in_area = true
		q.visible = true 

func _on_body_exited(body):
	if body.is_in_group("player"):
		player_in_area = false
		q.visible = false 

func _process(delta):
	if player_in_area and Input.is_action_pressed("switch_on"):
		$AnimatedSprite2D.play("light_switch")
		$"../CanvasLayer3/mapswitch1".play("lightswitch1")
		$AudioStreamPlayer3.play()
		$"../sousol_switch/CollisionSwitch".disabled = false
		
		

		
