extends Label

@export var i = 0


@export var texte1 : String = "Bonsoir je te souhaite la bienvenue au poste de gardien"
@export var texte2 : String = "Je suis là pour te tenir au courant de tes missions durant la nuit"
@export var texte3 : String = "J'espère que tu auras les épaules pour ce poste "
@export var texte4 : String = "et que tu ne disparaitras pas sans rien dire comme ton prédecesseur..."
@export var texte5 : String = "C'est devenu compliqué de trouver des gens prêts a travailler de nuit"
@export var texte6 : String = "Bon sur ce , je te laisse te préparé pour cette nuit !"

@export var textepngj1 : String = "Wesh la street j'ai fini mon service"
@export var texte2pngj1 : String = "Mon blaze c'est Tete de Neuille frere"
@export var texte3pngj1 : String = "Et merce la zone"

@export var texte1pngj2 : String = "Wesh wesh canne a peche"
@export var texte2pngj2 : String = "Donne moi de l'alcool ou je te tue"

@export var texte3pngj2 : String = "Bon toutou"

@export var texte1pngj3 : String = "Nardine Mouk jme taille de ce boulot de merde jvous déteste tous"


@export var vitesse : float = 0.1  # Temps entre chaque lettre
@onready var soundtext = $"../soundtext"
@onready var soundpnj = $"../blabla"

@onready var playerscript = get_parent()

var dialogue = []
var dialogue2 = []
var dialogue3 = []
var dialogue4 = []



func _ready() -> void:
	dialogue.append(texte1)
	dialogue.append(texte2)
	dialogue.append(texte3)
	dialogue.append(texte4)
	dialogue.append(texte5)
	dialogue.append(texte6)
	
	dialogue2.append(textepngj1)
	dialogue2.append(texte2pngj1)
	
	dialogue3.append(texte1pngj2)
	dialogue3.append(texte2pngj2)
	
	dialogue4.append(texte1pngj3)
	
func afficher_texte() -> void:
	while i < len(dialogue):
		await get_tree().create_timer(0.5).timeout
		soundtext.play()
		text = ""
		for lettre in dialogue[i]:
			text += lettre
			await get_tree().create_timer(0.08).timeout
		i+=1
	text = ""
	soundtext.stop()
	i = 0
	
func afficher_pnj1() -> void:
	for i in dialogue2:
		await get_tree().create_timer(0.5).timeout
		soundpnj.play()
		text = ""
		for lettre in i:
			text += lettre
			await get_tree().create_timer(0.08).timeout
	await get_tree().create_timer(1.0).timeout
	text = ""
	soundpnj.stop()
	$"../CameraHolder/Camera3D".make_current()
	playerscript.avancement = 1
	
func afficher2_pnj1() -> void:
	text = ""
	soundpnj.play()
	for l in texte3pngj1:
		text += l
		await get_tree().create_timer(0.08).timeout
	await get_tree().create_timer(1.0).timeout
	text = ""
	soundpnj.stop()
	
func afficher_pnj2() -> void:
	for i in dialogue3:
		await get_tree().create_timer(0.5).timeout
		soundpnj.play()
		text = ""
		for lettre in i:
			text += lettre
			await get_tree().create_timer(0.08).timeout
	await get_tree().create_timer(1.0).timeout
	text = ""
	soundpnj.stop()
	$"../CameraHolder/Camera3D".make_current()
	playerscript.avancement = 1
	
func afficher2_pnj2() -> void:
	soundpnj.play()
	text = ""
	for lettre in texte3pngj2 :
		text += lettre
		await get_tree().create_timer(0.08).timeout
	await get_tree().create_timer(1.0).timeout
	text = ""
	soundpnj.stop()
	#$"../CameraHolder/Camera3D".make_current()
	playerscript.avancement = 1
	
func afficher1_pnj3() -> void:
	soundpnj.play()
	text = ""
	for lettre in texte1pngj3 :
		text += lettre
		await get_tree().create_timer(0.08).timeout
	await get_tree().create_timer(1.0).timeout
	text = ""
	soundpnj.stop()
	$"../CameraHolder/Camera3D".make_current()
	playerscript.avancement = 1
