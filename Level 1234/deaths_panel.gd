extends Control

@onready var lives_label: Label = $LivesLabel

func _process(_delta: float) -> void:
	lives_label.text = "Your Lives: %d" % GameManager.player_lives


	
