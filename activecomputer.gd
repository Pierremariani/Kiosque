extends Control

@onready var screen = get_parent().get_node("ordiscreen")

@onready var dossier = get_parent().get_node("dossier")


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	$click.play()
	screen.visible = false
	dossier.visible = true
