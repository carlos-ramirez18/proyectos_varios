extends Node

@onready var otroNodo = $"../objeto1"

##FORMA 1 DE CONECTAR NODOS
#func _ready() -> void:
	#otroNodo.connect("Saludar", _on_Saludar)
#
#func _on_Saludar():
	#OS.alert("Hola desde el nodo uno")

##FORMA MAS RAPIDA DE CONECTAR NODOS
func _on_objeto_1_saludar(nombre: String) -> void:
	OS.alert("Saludos desde el nodo: " + nombre + " Yo soy el nodo " + name)
