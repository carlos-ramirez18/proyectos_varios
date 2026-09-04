class_name Jugador
extends CharacterBody3D


const SPEED = 5.0
const JUMP_VELOCITY = 7
var coins: int = 0

#EXPORT PARA MODIFICARLA DESDE EL INSPECTOR
@export var sens: float = 0.001

#PARA QUE QUEDE BLOQUEADO EL MOUSE
func _ready() -> void:
	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED
	$CanvasLayer/Control/Label.text = "Coins: " + str(coins)
	
#MOVER CAMARA CON EL MOUSE (EN REALIDAD ROTA EL PJ)
func _input(event: InputEvent) -> void:
	if event is InputEventMouseMotion:
		rotate_y(-event.relative.x * sens)
	
	if event.is_action_pressed("salir"):
		get_tree().quit()



#MOVEMENT
func _physics_process(delta: float) -> void:
	
	#SI BAJA MUCHO MUERE
	
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
		comprobarAltura()

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var input_dir := Input.get_vector("izquierda","derecha","adelante", "atras")
	var direction := (transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
	if direction:
		velocity.x = direction.x * SPEED
		velocity.z = direction.z * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.z = move_toward(velocity.z, 0, SPEED)

	move_and_slide()


func die():
	get_tree().reload_current_scene()

func comprobarAltura():
	if position.y <= -15:
		die()


func agregarMonedas():
	coins += 1
	$CanvasLayer/Control/Label.text = "Coins: " + str(coins)
