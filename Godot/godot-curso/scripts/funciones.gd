extends Node3D

#LA FLECHA INDICA EL TIPO DE RETORNO
func Sumar(a: float, b: float) -> float:
	return a + b

func _ready() -> void:
	var res = Sumar(3, 5)
	OS.alert(str(res))
	
