
func _input(event):
	if event.is_action_pressed("fire"):
		var bullet = Bala.instance()  # Crea un nuevo disparo
		bullet.position = player.position  # Coloca el disparo en la nave del jugador
		get_parent().add_child(bullet)  # Añade el disparo a la escena
