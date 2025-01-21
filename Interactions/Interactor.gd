extends Area3D

class_name Interactor

var controller: Node3D

var sonnerie = false

var firstdiag = false

var balais_in_hand = false

var nbclean = 0

@export var nbmissions = 0

var boitemissionsfinished = false

@export var intext = false

@export var t = 32.0

var pnj2secondpart = false

var canetteinhands = false

var boxinhands = false


@onready var soundbell = get_parent().get_parent().get_parent().get_parent().get_node("ring")

@onready var soundtel = get_parent().get_parent().get_parent().get_parent().get_node("tel")

@onready var areaproc1 = get_parent().get_parent().get_parent().get_parent().get_node("proc1")

@onready var camseeclient = get_parent().get_parent().get_parent().get_parent().get_node("seeclient")

@onready var camtel = get_parent().get_parent().get_parent().get_parent().get_node("seephone")

@onready var camtelanim = get_parent().get_parent().get_parent().get_parent().get_node("seephone/AnimationPlayer")

@onready var camordi = get_parent().get_parent().get_parent().get_parent().get_node("seeordi")

@onready var ordiscreen = get_parent().get_parent().get_parent().get_parent().get_node("ordiscreen")

@onready var soundpcenter = get_parent().get_parent().get_parent().get_parent().get_node("enterpc")

@onready var camordianim = get_parent().get_parent().get_parent().get_parent().get_node("seeordi/AnimationPlayer")

@onready var camseeclientanim = get_parent().get_parent().get_parent().get_parent().get_node("seeclient/AnimationPlayer")

@onready var firstclientanim = get_parent().get_parent().get_parent().get_parent().get_node("firstclient/AnimationPlayer")

@onready var labeltel = get_parent().get_parent().get_parent().get_parent().get_node("Player/tellabel")

@onready var playerscript = get_parent().get_parent().get_parent().get_parent().get_node("Player")

@onready var playerbalais = get_parent().get_parent().get_parent().get_parent().get_node("Player/CameraHolder/Camera3D/balais")

@onready var playerbalaisanim = get_parent().get_parent().get_parent().get_parent().get_node("Player/CameraHolder/Camera3D/balais/AnimPlayer")

@onready var playercam = get_parent().get_parent().get_parent().get_parent().get_node("Player/CameraHolder/Camera3D")

@onready var firstclientinte = get_parent().get_parent().get_parent().get_parent().get_node("firstclient/Interactable")

@onready var ordiinte = get_parent().get_parent().get_parent().get_parent().get_node("computer/Interactable")

@onready var dossierbutton = get_parent().get_parent().get_parent().get_parent().get_node("ordiscreen/Button")

@onready var telinteract = get_parent().get_parent().get_parent().get_parent().get_node("office/Sketchfab_model/root/GLTF_SceneRootNode/Telephone_telefono_mobile_0_Baked_36/Interactable")

@onready var balais = get_parent().get_parent().get_parent().get_parent().get_node("balais")

@onready var balaisinte = get_parent().get_parent().get_parent().get_parent().get_node("balais/Interactable")

@onready var caca1 = get_parent().get_parent().get_parent().get_parent().get_node("caca1")

@onready var caca2 = get_parent().get_parent().get_parent().get_parent().get_node("caca2")

@onready var caca3 = get_parent().get_parent().get_parent().get_parent().get_node("caca3")

@onready var pnj2 = get_parent().get_parent().get_parent().get_parent().get_node("secondclient")

@onready var pnj2animworld = get_parent().get_parent().get_parent().get_parent().get_node("secondclient/AnimationPlayer2")

@onready var pnj2inte = get_parent().get_parent().get_parent().get_parent().get_node("secondclient/Interactable")

@onready var pnj2anim = get_parent().get_parent().get_parent().get_parent().get_node("secondclient/AnimationPlayer")

@onready var showmissions = get_parent().get_parent().get_parent().get_parent().get_node("showmissions")

@onready var caca1inte = get_parent().get_parent().get_parent().get_parent().get_node("caca1/Interactable")

@onready var caca2inte = get_parent().get_parent().get_parent().get_parent().get_node("caca2/Interactable")

@onready var caca3inte = get_parent().get_parent().get_parent().get_parent().get_node("caca3/Interactable")

@onready var missionsinte = get_parent().get_parent().get_parent().get_parent().get_node("missions/Interactable")

@onready var showmissionscroix2 = get_parent().get_parent().get_parent().get_parent().get_node("showmissions/croix2")

@onready var balaisound = get_parent().get_parent().get_parent().get_parent().get_node("Player/balais")

@onready var proutsound = get_parent().get_parent().get_parent().get_parent().get_node("Player/prout")

@onready var missionsound = get_parent().get_parent().get_parent().get_parent().get_node("notes")

@onready var canettesound = get_parent().get_parent().get_parent().get_parent().get_node("canettesound")

@onready var canetteinte = get_parent().get_parent().get_parent().get_parent().get_node("kiki/Sketchfab_model/kios02_obj_cleaner_materialmerger_gles/Object_2/Interactable")

@onready var canette = get_parent().get_parent().get_parent().get_parent().get_node("Player/CameraHolder/Camera3D/canette")

@onready var box1inte = get_parent().get_parent().get_parent().get_parent().get_node("office/Sketchfab_model/root/GLTF_SceneRootNode/IS4_MDL_SalaControl_CajaCarton__1__1_SalaControl_Props_Mobi_10/Object_24/Interactable")

@onready var box1 = get_parent().get_parent().get_parent().get_parent().get_node("office/Sketchfab_model/root/GLTF_SceneRootNode/IS4_MDL_SalaControl_CajaCarton__1__1_SalaControl_Props_Mobi_10/Object_24")

@onready var playerbox = get_parent().get_parent().get_parent().get_parent().get_node("Player/CameraHolder/Camera3D/box")

@onready var boitesinte = get_parent().get_parent().get_parent().get_parent().get_node("boites/Interactable")

@onready var showmissionscroix3 = get_parent().get_parent().get_parent().get_parent().get_node("showmissions/croix3")

@onready var boites = get_parent().get_parent().get_parent().get_parent().get_node("boites")

@onready var pnj3 = get_parent().get_parent().get_parent().get_parent().get_node("pnj3")

@onready var pnj3anim = get_parent().get_parent().get_parent().get_parent().get_node("pnj3/AnimationPlayer")

@onready var pnj3inte = get_parent().get_parent().get_parent().get_parent().get_node("pnj3/Interactable")

@onready var dossierscript = get_parent().get_parent().get_parent().get_parent().get_node("dossier")



func interact(interactable: Interactable) -> void:
	if is_instance_valid(interactable):
		interactable.interacted.emit(self)
		if interactable.get_parent().get_name() == "bell":
			soundbell.play()
			if not sonnerie:
				sonnerie = true
				await get_tree().create_timer(1.5).timeout
				telinteract.process_mode = 0
				soundtel.play()
		if interactable.get_parent().get_name() == "Telephone_telefono_mobile_0_Baked_36":
			if not firstdiag:
				playerscript.visible = false
				camtel.make_current()
				camtelanim.play("gotel")
				firstdiag = true
				soundtel.stop()
				#labeltel.visible = true
				#intext = true
				#labeltel.afficher_texte()
				#telinteract.process_mode = 4
				#playerscript.avancement = 0
				#await get_tree().create_timer(t).timeout
				playerscript.visible = true
				intext= false
				playerscript.avancement = 1
				playercam.make_current()
				areaproc1.process_mode = 0
			if nbmissions == 1:
				soundtel.stop();
				#dialogue tel
				await get_tree().create_timer(5.0).timeout
				pnj3.visible = true
				pnj3inte.process_mode = 0
				soundbell.play()
				pnj3anim.play("Standing Idle")
				
		if interactable.get_parent().get_name() == "firstclient":
			playerscript.avancement = 0
			firstclientinte.process_mode = 4
			camseeclient.make_current()
			camseeclientanim.play("go")
			labeltel.afficher_pnj1()
			dossierbutton.visible = true
			
		if interactable.get_parent().get_name() == "computer":
			playerscript.visible = false
			playerscript.avancement = 0
			soundpcenter.play()
			ordiinte.process_mode = 4
			camordi.make_current()
			camordianim.play("go")
			await get_tree().create_timer(1.0).timeout
			Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
			ordiscreen.visible = true
			playerscript.is_on_computer = true
		if interactable.get_parent().get_name() == "balais":
			if balais_in_hand:
				if not boitemissionsfinished:
					allboxinte()
				balais.visible = true
				balais_in_hand = false
				playerbalais.visible = false
				notcacainte()
			else:
				balais.visible = false
				balais_in_hand = true
				playerbalais.visible = true
				cacainte()
				allboxnotinte()
		if interactable.get_parent().get_name() == "caca1":
			balaisound.play()
			playerbalaisanim.play("clean")
			caca1.visible = false
			caca1inte.process_mode = 4
			nbclean+=1
			playerscript.avancement = 0
			await get_tree().create_timer(2.5).timeout
			playerscript.avancement = 1
			missions2win()
		if interactable.get_parent().get_name() == "caca2":
			balaisound.play()
			playerbalaisanim.play("clean")
			caca2.visible = false
			caca2inte.process_mode = 4
			nbclean+=1
			playerscript.avancement = 0
			await get_tree().create_timer(2.5).timeout
			playerscript.avancement = 1
			missions2win()
		if interactable.get_parent().get_name() == "caca3":
			balaisound.play()
			playerbalaisanim.play("clean")
			caca3.visible = false
			caca3inte.process_mode = 4
			playerscript.avancement = 0
			await get_tree().create_timer(2.5).timeout
			playerscript.avancement = 1
			nbclean+=1
			missions2win()
			if nbmissions == 1:
				showpnj2()
		if interactable.get_parent().get_name() == "missions":
			missionsound.play()
			playerscript.avancement = 0
			showmissions.visible = true
		if interactable.get_parent().get_name() == "secondclient":
			if not pnj2secondpart:
				playerscript.avancement = 0
				camseeclient.make_current()
				camseeclientanim.play("go")
				labeltel.afficher_pnj2()
				canetteinte.process_mode = 0
				pnj2secondpart = true
			else : 
				if canetteinhands:
					playerscript.avancement = 0
					camseeclient.make_current()
					labeltel.afficher2_pnj2()
					canette.visible = false
					canetteinhands = false
					await get_tree().create_timer(2.0).timeout
					pnj2anim.play("Rig|turning_right")
					await get_tree().create_timer(1.5).timeout
					canettesound.play()
					pnj2.rotation_degrees = Vector3(0, 0, 0)
					pnj2anim.play("Rig|walk")
					pnj2animworld.play("part")
		if interactable.get_parent().get_name() == "Object_2":
			canette.visible = true
			canetteinhands = true
		if interactable.get_parent().get_name() == "Object_24":
			if boxinhands:
				boxinhands = false
				box1.visible = true
				playerbox.visible = false
				boitesinte.process_mode = 4
			else :
				boxinhands = true
				box1.visible = false
				playerbox.visible = true
				boitesinte.process_mode = 0
		if interactable.get_parent().get_name() == "boites":
			if boxinhands:
				boxinhands = false
				box1inte.process_mode = 4
				playerbox.visible = false
				boitesinte.process_mode = 4
				boites.visible = true
				showmissionscroix3.visible = true
				boitemissionsfinished = true
				nbmissions+=1;
				if nbmissions == 1:
					showpnj2()
		if interactable.get_parent().get_name() == "pnj3":
			playerscript.avancement = 0
			camseeclient.make_current()
			camseeclientanim.play("go")
			labeltel.afficher1_pnj3()
			dossierscript.pnj2active = true
func allboxinte():
	box1inte.process_mode = 0
	boitesinte.process_mode = 0
	
func allboxnotinte():
	box1inte.process_mode = 4
	boitesinte.process_mode = 4
			
func cacainte():
	caca1inte.process_mode = 0
	caca2inte.process_mode = 0
	caca3inte.process_mode = 0
	
func notcacainte():
	caca1inte.process_mode = 4
	caca2inte.process_mode = 4
	caca3inte.process_mode = 4	
	
func missions2win():
	if nbclean >= 3:
		nbmissions+=1
		showmissionscroix2.visible = true
		await get_tree().create_timer(3.0).timeout
		proutsound.play()
		
func showpnj2():
	await get_tree().create_timer(3.0).timeout
	soundbell.play()
	pnj2.visible = true
	pnj2inte.process_mode = 0
	pnj2anim.play("Rig|idle")
				
func focus(interactable: Interactable) -> void:
	interactable.focused.emit(self)
	$Label.visible = true
	
func unfocus(interactable: Interactable) -> void:
	interactable.unfocused.emit(self)
	$Label.visible = false
	
func get_closest_interactable() -> Interactable:
	var list: Array[Area3D] = get_overlapping_areas()
	var distance: float
	var closest_distance: float = INF
	var closest: Interactable = null

	for interactable in list:
		distance = interactable.global_position.distance_to(global_position)

		# Sets the first interactable in the list as closest
		if distance < closest_distance:
			closest = interactable as Interactable
			closest_distance = distance

	return closest
