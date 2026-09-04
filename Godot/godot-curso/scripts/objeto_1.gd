extends Node

signal Saludar(nombre: String)

func _ready() -> void:
	await get_tree().create_timer(2).timeout
	Saludar.emit(name)
