extends Node

var Alien = preload("res://cenas/alien.tscn")

var lista_aliens = []

func _ready():
	for j in range(4):
		lista_aliens.append([])
		for i in range(8):
			var alien = Alien.instantiate()
			alien.global_position = Vector2(50+20*i, 20+20*j)
			self.add_child(alien)
			lista_aliens[j].append(alien)
			alien.connect("alien_eliminado", Callable(self, "eliminar_alien"))
	#print(lista_aliens)
func eliminar_alien(a):
	#print("alien eliminado")
	for fila in lista_aliens:
		for i in range(len(fila)-1):
			if a == fila[i]:
				fila.remove_at(i)
