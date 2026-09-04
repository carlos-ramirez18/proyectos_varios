#extends Node3D
#
##Tipos de dato
##Numeros
##enteros
#var vida: int
##flotantes
#var dinero: float
##Boolean
#var is_alive: bool
##Sting
#var nombre: String
#
#
##Estruturas de control
#func _ready() -> void:
	#vida = -1
	#if vida >= 0:
		#is_alive = true
		#OS.alert("El jugador esta vivo")
	#else:
		#is_alive = false
		#OS.alert("el jugador murio")
