extends Control

func _init() -> void:
	hide()
func resume():
	get_tree().paused = false

func paused():
	get_tree().paused = true

func _process(_delta: float) -> void:
	eescPressed()
	pass


	

func eescPressed():
	if Input.is_action_just_pressed("pause") or Input.is_action_just_pressed("esc"):
		if is_visible_in_tree():
			print("hiding")
			hide()
			get_tree().paused = false
		else:
			print("showing")
			show()
			get_tree().paused = true
			
			

		
func _on_resume_pressed() -> void:
	hide()
	get_tree().paused = false

func _on_restart_pressed() -> void:
	get_tree().paused = false
	get_tree().reload_current_scene()


func _on_quit_pressed() -> void:
	get_tree().quit()
