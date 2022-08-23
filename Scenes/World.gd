extends Node2D

func _ready():
	GameStats.set_time() 

func _process(delta):

	if Input.is_action_just_pressed("reset"):
		GameStats.reset()
	print(GameStats.get_time())
	$CanvasLayer/Control/Label.text = GameStats.get_time()
