extends Control

func _ready() -> void:
	visible = GameManager.death_message_state
	
func _process(_delta) -> void:
	visible = GameManager.death_message_state
