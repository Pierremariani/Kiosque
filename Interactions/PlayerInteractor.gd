extends Interactor

@export var player : CharacterBody3D

var cache_closest : Interactable



func _ready() -> void:
	controller = player
	
func _physics_process(delta: float) -> void:
	var new_closest: Interactable = get_closest_interactable()
	if new_closest != cache_closest:
		if is_instance_valid(cache_closest):
			unfocus(cache_closest)
		if new_closest:
			focus(new_closest)
		cache_closest = new_closest
		
func _input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_f"):
		if cache_closest:
			interact(cache_closest)


func _on_area_exited(area: Interactable) -> void:
	if cache_closest == area:
		unfocus(area)

