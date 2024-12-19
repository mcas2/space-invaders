extends CharacterBody2D

@export var Speed : int = 100
var _moveDirection : int = 1

# Esta función se llama en cada frame físico (en el _PhysicsProcess)
func _physics_process(delta : float) -> void:
	velocity = Vector2(Speed * _moveDirection, 0)
	move_and_slide()  # Mueve al personaje

	# Detectar si el marciano ha alcanzado los bordes de la pantalla
	if position.x >= 600 or position.x <= 100:
		_moveDirection *= -1  # Cambiar dirección
		position += Vector2(0, 20)  # Los enemigos descienden un poco cada vez
