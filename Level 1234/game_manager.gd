extends Node

var score: int

var current_level_path = "res://levels/level_1.tscn"
var player_lives = 3
var death_message_state = false
 
func _init() -> void:
	print("init score:", score)

func add_point():
	score += 1
	print("score:", score)

func load_level(path: String):
	#current_level_path = path
	
	var container = get_node("/root/root/LevelContainer")

	container.clear()
	
	var new_level = load(path).instantiate()
	container.call_deferred("add_child", new_level)
