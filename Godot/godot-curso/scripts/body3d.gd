extends CharacterBody3D


const velocidad = 3

func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity = get_gravity()
	
	var direction:Vector2 = Input.get_vector("izquierda","derecha","adelante","atras")
	
	if direction:
		velocity.x = direction.x * velocidad
		velocity.z = direction.y * velocidad
	else:
		velocity.x = 0
		velocity.z = 0
	
	move_and_slide()
