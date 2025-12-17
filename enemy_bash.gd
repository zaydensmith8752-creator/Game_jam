extends CharacterBody2D

var bash_pos

var bash_speed = 9000
var bash = false

func _ready() -> void:
	$bash_time.start()

func _physics_process(delta: float) -> void:
	pass
	if bash == true:
		var direction = (bash_pos - global_position).normalized()
		velocity = direction * bash_speed
		$bash_time.start()
	else:
		velocity = Vector2.ZERO
		bash = false
		move_and_slide()

func _on_bash_time_timeout() -> void:
	bash_pos = $"../CharacterBody2D".global_position
	bash = true
	print(bash_pos)
	print(bash)
