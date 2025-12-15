extends CharacterBody2D

var bash_pos
var new_pos = Vector2.ZERO
var bash_speed = 9000
var bash

func _ready() -> void:
	$bash_time.start()

func _physics_process(delta: float) -> void:
	pass
	if bash == true:
		$Timer.start()
		bash = false
		$bash_time.start()

func _on_bash_time_timeout() -> void:
	pass
	bash_pos = $"../CharacterBody2D".global_position
	bash = true
	print(new_pos)
	print(bash_pos)
	print(bash)


func _on_timer_timeout() -> void:
	position = bash_pos
