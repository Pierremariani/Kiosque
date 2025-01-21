extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready():
	$Camera3D.make_current()
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)



func _on_button_pressed():
	get_tree().change_scene_to_file("res://world.tscn")
