extends CharacterBody3D

@export var speed = 3.5

@onready var _camera := $CameraHolder

@export var avancement = 1

@onready var _raycast := _camera.get_node("Camera3D/RayCast3D")

@onready var _hold_position := _camera.get_node("Camera3D/HoldPosition")

@onready var screen = get_parent().get_node("ordiscreen")

@onready var dossier = get_parent().get_node("dossier")

@onready var ordiinte = get_parent().get_node("computer/Interactable")

@onready var pnj1anim = get_parent().get_node("firstclient/animpartir")

@onready var pnj2anim = get_parent().get_node("pnj3/AnimationPlayer")

@onready var pnj2anim2 = get_parent().get_node("pnj3/AnimationPlayer2")

@onready var dossierscript = get_parent().get_node("dossier")

@onready var timer3 = get_parent().get_node("Timer3")

@onready var showmissions = get_parent().get_node("showmissions")

@onready var dossierbuttonpnj1 = get_parent().get_node("dossier/Button")

@onready var dossierbuttonpnj2 = get_parent().get_node("dossier/Button2")

@onready var balaisinte = get_parent().get_node("balais/Interactable")

@onready var missionsinte = get_parent().get_node("missions/Interactable")

@onready var boitesinte = get_parent().get_node("office/Sketchfab_model/root/GLTF_SceneRootNode/IS4_MDL_SalaControl_CajaCarton__1__1_SalaControl_Props_Mobi_10/Object_24/Interactable")

var target_velocity = Vector3.ZERO

@export var fall_acceleration = 75

@export var is_on_computer = false

func _physics_process(delta):
	var direction = Vector3.ZERO

	if Input.is_action_pressed("ui_left"):
		direction.x += avancement
	if Input.is_action_pressed("ui_right"):
		direction.x -= avancement
	if Input.is_action_pressed("ui_up"):
		direction.z += avancement
	if Input.is_action_pressed("ui_down"):
		direction.z -= avancement
	if Input.is_action_pressed("ui_escape"):
		if is_on_computer:
			$".".visible = true
			screen.visible = false
			dossier.visible = false
			Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
			is_on_computer = false
			$CameraHolder/Camera3D.make_current()
			ordiinte.process_mode = 0
			if dossierscript.croix1visible:
				if not dossierscript.oncecroix1:
					dossierscript.oncecroix1 = true
					dossierbuttonpnj1.queue_free()
					await get_tree().create_timer(1.5).timeout
					$tellabel.afficher2_pnj1()
					await get_tree().create_timer(1.0).timeout
					pnj1anim.play("partir")
					balaisinte.process_mode = 0
					missionsinte.process_mode = 0
					boitesinte.process_mode = 0
			if dossierscript.croix2visible:
				if not dossierscript.oncecroix2:
					dossierscript.oncecroix2 = true
					dossierbuttonpnj2.queue_free()
					pnj2anim.play("Standing Run Forward")
					pnj2anim2.play("part")
					timer3.start()
		showmissions.visible = false
		avancement = 1 
	if Input.is_action_pressed("ui_click"):
		#$tellabel.i +=1
		pass
	var camera_forward = -_camera.global_transform.basis.z.normalized()

	# Ignorer la composante Y pour ne pas sauter
	camera_forward.y = 0

	if direction != Vector3.ZERO:
		direction = direction.normalized()
		# Utilisation de la direction avant de la caméra
		direction = camera_forward.rotated(Vector3.UP, atan2(direction.x, direction.z))

	# Ground Velocity
	target_velocity.x = direction.x * speed
	target_velocity.z = direction.z * speed

	# Vertical Velocity
	if not is_on_floor():
		# Si dans l'air, chute vers le bas (gravité)
		target_velocity.y = target_velocity.y - (fall_acceleration * delta)

	# Mouvement du personnage
	velocity = target_velocity
	move_and_slide()
