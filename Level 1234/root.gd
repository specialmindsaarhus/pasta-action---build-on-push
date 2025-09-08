extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	GameManager.load_level(GameManager.current_level_path)
	pass # Replace with function body.
