extends KinematicBody2D

export (int) var speed = 120
export (int) var jump_speed = -180
export (int) var gravity = 400
export (int) var slide_speed = 400

var velocity = Vector2.ZERO

export (float) var friction = 10
export (float) var acceleration = 25

<<<<<<< Updated upstream
enum state {IDLE, RUNNING, PUSHING, ROLLING, JUMP, STARTJUMP, FALL, ATTACK} 

onready var player_state = state.IDLE
=======
enum state {IDLE, RUNNING, PUSHING, ROLLING, JUMP, STARTJUMP, FALL, ATTACK}

onready var player_state = state.IDLE 
>>>>>>> Stashed changes

func _ready():
	$AnimationPlayer.play("Idle")
	pass

func update_animation(anim):
<<<<<<< Updated upstream
	if velocity.x < 0:
		$Sprite.flip_h = true
	elif velocity.x > 0:
		$Sprite.flip_h = false
		
	match(anim):
		state.FALL:
			$AnimationPlayer.play("Fall")
		state.ATTACK:
			$AnimationPlayer.play("Attack")
		state.IDLE:
			$AnimationPlayer.play("Idle")
		state.JUMP:
			$AnimationPlayer.play("Jump")
		state.PUSHING:
			$AnimationPlayer.play("Pushing")
		state.RUNNING:
			$AnimationPlayer.play("Running")
		
	pass
	
func handle_state(player_state):
	match(player_state):
		state.STARTJUMP:
			velocity.y = jump_speed
	pass

=======
	pass
	
func handle_state(state):
	pass
	
>>>>>>> Stashed changes
func get_input():
	var dir = Input.get_action_strength("right") - Input.get_action_strength("left")
	if dir != 0:
		velocity.x = move_toward(velocity.x, dir*speed, acceleration)
	else:
		velocity.x = move_toward(velocity.x, 0, friction)
	
func _physics_process(delta):
<<<<<<< Updated upstream
	get_input()
	print(is_on_floor())
	if velocity == Vector2.ZERO:
		player_state = state.IDLE
	if Input.is_action_just_pressed("jump") and is_on_floor():
		player_state = state.STARTJUMP
	elif velocity.x != 0:
		player_state = state.RUNNING
	
=======

	get_input()
	if velocity.x == Vector2.ZERO:
		player_state = state.IDLE
	elif velocity.x != 0 and Input.is_action_just_pressed("jump") and is_on_floor():
		player_state = state.STARTJUMP
	elif velocity.x != 0:
		player_state = state.RUNNING

>>>>>>> Stashed changes
	if not is_on_floor():
		if velocity.y < 0:
			player_state = state.JUMP
		if velocity.y > 0:
<<<<<<< Updated upstream
			player_state = state.FALL
	
	handle_state(player_state)
=======
			player_state = state.FAll
	
	
	handle_state( player_state)
>>>>>>> Stashed changes
	update_animation(player_state)
	#set gravity
	velocity.y += gravity * delta
	velocity = move_and_slide(velocity, Vector2.UP)
