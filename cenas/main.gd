extends Node

var pontos = 0
@onready var label_pontos = $VBoxContainer/LabelPontos



func Somar_pontos_alien():
	#print("pontos")
	pontos += 100
	label_pontos.text = str(pontos)
