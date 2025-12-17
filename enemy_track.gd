extends CharacterBody2D
var damage = 0
var speed = 10000
@export var track: Node = null

func _ready() -> void:
	pass
	$NavigationAgent2D.target_position = track.global_position
	$track_time.start()
	
func _physics_process(delta: float) -> void:
	pass
	if !$NavigationAgent2D.is_target_reached():
		var nav_point_direc = to_local($NavigationAgent2D.get_next_path_position()).normalized()
		velocity = nav_point_direc * speed * delta

		move_and_slide()
	if damage == 5:
		queue_free()
func _on_track_time_timeout() -> void:
	if $NavigationAgent2D.target_position != track.global_position:
		$NavigationAgent2D.target_position = track.global_position
		$track_time.start()


func _on_area_2d_area_entered(area):
	if area.is_in_group("atk"):
		damage += 1
