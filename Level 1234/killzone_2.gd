extends Area2D

@onready var timer: Timer = $Timer

func _on_body_entered(body: Node2D) -> void:    
	GameManager.player_lives -= 1
	print("YOU DIED FATTY")
	Engine.time_scale = 0.5
	body.get_node("CollisionShape2D").queue_free()

	if GameManager.player_lives < 1:
		GameManager.death_message_state = true
		# Start timer kun for at vise death message, ikke for at genstarte
		timer.start()
	else:
		timer.start()

func _on_timer_timeout() -> void:
	Engine.time_scale = 1
	print("Timeout ended")
	
	# Kun genstart hvis spilleren stadig har liv
	if GameManager.player_lives > 0:
		get_tree().reload_current_scene()

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("pause") and GameManager.death_message_state:
		print("Restarting game after death message")
		GameManager.death_message_state = false
		GameManager.player_lives = 3
		GameManager.current_level_path = "res://levels/level_1.tscn"
		Engine.time_scale = 1
		get_tree().reload_current_scene()
