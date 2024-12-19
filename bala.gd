extends CharacterBody2D

@export var speed = 400  # Velocidad de disparo

func _process(delta):
	position.y -= speed * delta  # Mueve el disparo hacia arriba

	# Destruye el disparo si sale de la pantalla
	if position.y < 0:
		queue_free()
