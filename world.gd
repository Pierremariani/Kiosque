extends Node3D

@onready var rouler1sound = $car1/rouler

@onready var rouler2sound = $car2/rouler

@onready var pluiesound = $GPUParticles3D/pluie

@onready var ventilosound = $ventilo

@onready var telinte = get_node("office/Sketchfab_model/root/GLTF_SceneRootNode/Telephone_telefono_mobile_0_Baked_36/Interactable")

@onready var canetteinte = get_node("kiki/Sketchfab_model/kios02_obj_cleaner_materialmerger_gles/Object_2/Interactable")

@onready var missionsinte = get_node("missions/Interactable")
@onready var pnj2anim = get_node("secondclient/AnimationPlayer2")
@onready var box1inte = get_node("office/Sketchfab_model/root/GLTF_SceneRootNode/IS4_MDL_SalaControl_CajaCarton__1__1_SalaControl_Props_Mobi_10/Object_24/Interactable")

func _ready():
	telinte.process_mode = 4
	$proc1.process_mode = 4
	$firstclient/Interactable.process_mode = 4
	$caca1/Interactable.process_mode = 4
	$caca2/Interactable.process_mode = 4
	$caca3/Interactable.process_mode = 4
	missionsinte.process_mode = 4
	$balais/Interactable.process_mode = 4
	$secondclient/Interactable.process_mode = 4
	canetteinte.process_mode = 4
	box1inte.process_mode = 4
	$boites/Interactable.process_mode = 4
	$pnj3/Interactable.process_mode = 4
	
	
func _on_timer_timeout():
	$car1/AnimationPlayer.play("left2right")
	$car1/rouler.play()


func _on_timer_2_timeout():
	$car2/AnimationPlayer.play("right2left")
	$car2/rouler.play()



func _on_area_3d_body_entered(body):
	rouler1sound.volume_db = -100
	rouler2sound.volume_db = -100
	pluiesound.volume_db = -100
	ventilosound.volume_db = -55.8


func _on_area_3d_body_exited(body):
	rouler1sound.volume_db = -37
	rouler2sound.volume_db = -44.2
	pluiesound.volume_db = -44.2
	ventilosound.volume_db = -100


func _on_proc_1_body_entered(body):
	$firstclient.visible = true
	$firstclient/AnimationPlayer.play("Take 001")
	$ring.play()
	$proc1.queue_free()
	$firstclient/Interactable.process_mode = 0


func _on_zone_collision_body_entered(body):
	$accident1.play()
	$hommeaccident.play()
	pnj2anim.play("mort")
	$douleur.play()
	await get_tree().create_timer(1.0).timeout
	$accident2.play()
	await get_tree().create_timer(2.2).timeout
	$Player/CameraHolder/Camera3D.make_current()
	$stresse.play()
	await get_tree().create_timer(1.0).timeout
	$SpotLight3D.visible = false
	$SpotLight3D2.visible = false
	$SpotLight3D3.visible = false
	$SpotLight3D4.visible = false
	$SpotLight3D5.visible = false
	await get_tree().create_timer(2.2).timeout
	$SpotLight3D.visible = true
	$SpotLight3D2.visible = true
	$SpotLight3D3.visible = true
	await get_tree().create_timer(5.2).timeout
	$tel.play()
	telinte.process_mode = 0


func _on_timer_3_timeout():
	$ring.play()
	$ring.play()
	$ring.play()
	$ring.play()
	$ring.play()
	await get_tree().create_timer(7.2).timeout
	$carscreamer.visible = true
	$carscreamer/AnimationPlayer.play("crash")
	$carscreamer/screamercar1.play()
	$carscreamer/screamercar2.play()
	await get_tree().create_timer(1.5).timeout
	$carscreamer.visible = false
