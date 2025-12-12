extends CharacterBody2D


var SPEED = 500.0
var dash = false
var move1
var move2

func _physics_process(delta):
	var direction_Y = Input.get_axis("up", "down")
	var direction_X = Input.get_axis("left", "right")
	
	if direction_X:
		velocity.x = direction_X * SPEED
		move1 = true
		print("move")
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		move1 = false
		
	if direction_Y:
		velocity.y = direction_Y * SPEED
		move2 = true
		print("move")
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)
		move2 = false

	if move1 == true && move2 == true && dash == false:
		SPEED = 250
	else:
		SPEED = 500.0

	if Input.is_action_just_pressed("roll"):
		dash = true
		SPEED = SPEED * 4
		$Dash_Timer.start()
		print(dash)
	move_and_slide()


func _on_dash_timer_timeout():
	dash = false
	SPEED = 250
