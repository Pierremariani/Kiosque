extends Control

@export var croix1visible = false

@export var oncecroix1 = false

@export var croix2visible = false

@export var oncecroix2 = false

@export var pnj2active = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	if not croix1visible:
		$rowsound.play()
		$croix1.visible = true
		croix1visible = true
	else:
		$croix1.visible = false
		croix1visible = false


func _on_button_2_pressed():
	if pnj2active:
		if not croix2visible:
			$rowsound.play()
			$croix2.visible = true
			croix2visible = true
		else:
			$croix2.visible = false
			croix2visible = false
	else :
		$error.play()
