extends CanvasLayer

@onready var photo = $TextureRect1
var is_open = false

func _ready():
	photo.visible = false
	process_mode = Node.PROCESS_MODE_ALWAYS  

func _process(delta):
	if Input.is_action_just_pressed("chat"):
		if is_open:
			hide_photo()
		elif not get_tree().paused: # éviter d'ouvrir si déjà en pause pour autre chose
			show_photo()

func show_photo():
	get_tree().paused = true
	photo.visible = true
	is_open = true

func hide_photo():
	photo.visible = false
	get_tree().paused = false
	is_open = false
