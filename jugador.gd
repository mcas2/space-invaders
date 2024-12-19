extends CharacterBody2D

@export var Speed : int = 400

# Función para obtener las entradas del jugador
func get_input() -> void:
	var input_direction = Input.get_vector("left", "right", "up", "down")
	velocity = input_direction * Speed

# Esta función se llama en cada frame físico (en el _PhysicsProcess)
func _physics_process(delta : float) -> void:
	get_input()
	move_and_slide()  # Mueve al personaje
