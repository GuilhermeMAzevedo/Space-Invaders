extends Node

var pontos = 0
var vidas = 1


@onready var jogador = $jogador
@onready var label_pontos = $VBoxContainer/Pontos
@onready var label_vidas = $VBoxContainer2/LabelVidas


func _ready():
	jogador.connect("jogador_vida_a_menos", Callable(self, "eliminacao"))



func Somar_pontos_alien():
	pontos += 100
	label_pontos.text = str("points: " + str(pontos))

func somar_bonus():
	if vidas < 3:
		vidas += 1
		label_vidas.text = str(str(vidas) + "X")

func eliminacao():
	vidas -= 1
	if vidas == 0:
		get_tree().change_scene_to_file("res://cenas/game_over.tscn")
	else:
		label_vidas.text = str(str(vidas) + "X")
		jogador.reviver()
		
