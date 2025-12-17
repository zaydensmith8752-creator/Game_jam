extends Node2D

var arena = preload("res://arena.tscn")
var shop = preload("res://shop.tscn")


func _on_area_2d_area_entered(area):
	if area.is_in_group("play"):
		get_parent().add_child(arena.instantiate())
		queue_free()
