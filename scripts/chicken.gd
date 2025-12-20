extends Area2D

@onready var _animated_sprite = $AnimatedSprite2D

signal chicken_chosen

var colors = ["white", "brown", "blue"]
var egg_color := "not chosen yet"
var local_state = game.chicken_states[0] # 0 = "idle", 1 = "waiting" 3 = "dead"

func spawn_egg(color):
	var new_egg = 
	print("Made an " + color + " egg!")
	

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	# Set the Initial Chicken State
	local_state = "idle"\
	
	# Prepare Eggs
	# Decide what color of egg to lay.
	var color_index = randi_range(0,2)
	egg_color = colors[color_index]
	var eggs = preload("res://egg.tscn")

	# make sure we don't have more than 3 of the same egg.
	if egg_color == "brown" and game.brown_eggs < 3:
		game.brown_eggs += 1

	elif egg_color == "blue" and game.blue_eggs < 3:
		game.blue_eggs += 1

	elif egg_color == "white" and game.white_eggs < 3:
		game.white_eggs += 1
	
	else: 
		print("Brown Eggs: " + str(game.brown_eggs))
		print("Blue Eggs: " + str(game.blue_eggs))
		print("White Eggs: " + str(game.white_eggs))

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
	# Listen for the Butcher signal. (chicken dissapears and the eggs are collected.)
	
	# Listen for the No Match signal. (switch back to idle)

func _input_event(_viewport: Viewport, _event: InputEvent, _shape_idx: int) -> void:
	# Only Click and Touch events are valid
	if ((_event is InputEventMouseButton and _event.pressed) and (_event.button_index == MOUSE_BUTTON_LEFT)) or (_event is InputEventScreenTouch and _event.pressed):
		if game.chickens_selected < 3:
			emit_signal("chicken_chosen")
			# change local_state to be read by game.gd
			local_state = "waiting"
			game.chickens_selected += 1
			# spawn egg scene
			spawn_egg(egg_color)
			# play the poof animation
			_animated_sprite.play("poof")
		else: 
			print("Chicken is hidden...")
			
