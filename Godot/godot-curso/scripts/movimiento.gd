extends CharacterBody3D

var velocidad : float = 4.5

func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity.y -= 0.3
	
	#Vector de movimiento (x;y)
	var direction: Vector2 = Input.get_vector(
		"izquierda", 
		"derecha", 
		"adelante", 
		"atras"
		)
	
	velocity.x = direction.x * velocidad
	velocity.z = direction.y * velocidad
	
	
	
	#SIEMPRE VA ESTA FUNCION AL FINAL
	move_and_slide()
