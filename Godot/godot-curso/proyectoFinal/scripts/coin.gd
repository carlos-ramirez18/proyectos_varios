extends Area3D

func _on_body_entered(body: Jugador) -> void:
	if body.is_in_group("Jugador"):
		body.agregarMonedas()
		queue_free()
