extends Camera3D

@onready var noise = FastNoiseLite.new()

@export var decay : float = 0.5
@export var amplitude : float = 15.0

var trauma = 0.0
var trauma_power = 2
var NOISED_SPEED = 5
var _noise_y = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	noise.seed = randi()
	noise.noise_type = FastNoiseLite.TYPE_PERLIN

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	shake()
	
func add_trauma(amount : float):
	trauma = min(trauma + amount, 1.0)
	
func shake():
	var amount = pow(trauma,trauma_power)
	v_offset = amplitude * amount * noise.get_noise_2d(noise.seed,_noise_y)
	h_offset = amplitude * amount * noise.get_noise_2d(noise.seed*2,_noise_y)
	
	

