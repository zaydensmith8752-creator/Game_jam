extends CharacterBody2D

func _ready() -> void:
	pass
	#find the position of player
	#start bash_timer

func _physics_process(delta: float) -> void:
	pass
	#move from current to players old fast
	

func _on_bash_time_timeout() -> void:
	pass
	#move from current to players old fast
	#find the position of player
	#start recover_timer
	

func _on_recovery_time_timeout() -> void:
	pass
		#start bash_timer
