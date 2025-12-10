extends Node2D

var menu = 0
var map = preload("res://map.tscn")
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("up"):
		menu = wrapi(menu - 1, 0 ,2)
	if Input.is_action_just_pressed("down"):
		menu = wrapi(menu + 1, 0 ,2)
	if menu == 0:
		$Control/start.text = "> START <"
		$Control/exit.text = "EXIT"
	if menu == 1:
		$Control/start.text = "START"
		$Control/exit.text = "> EXIT <"
	if Input.is_action_just_pressed("enter"):
		if menu == 0:
			get_parent().add_child(map.instantiate())
			queue_free()
		if menu == 1:
			get_tree().quit()
