extends Area2D

@onready var _animated_sprite = $AnimatedSprite2D



var colors = ["white", "brown", "blue"]
var egg_color := "not chosen yet"
var eggs = preload("res://egg.tscn")
var local_state = game.chicken_states[0] # 0 = "idle", 1 = "waiting" 3 = "dead"


func get_egg_color(): # Get the color of a chicken and 
					  # remove the color picking options if a match was already found of that color
	var color_index = randi_range(0, 2)
	egg_color = colors[color_index]

	if egg_color == "white" and game.white_eggs >= 3:
		egg_color = get_egg_color()
	elif egg_color == "brown" and game.brown_eggs >= 3:
		egg_color = get_egg_color()
	elif egg_color == "blue" and game.blue_eggs >= 3:
		egg_color = get_egg_color()
	else:
		return egg_color

func spawn_egg(color):
	var new_egg = eggs.instantiate()
	add_child(new_egg)


	print("Made an " + color + " egg!")
	



func _no_match_found():
	_animated_sprite.stop()
	local_state = "idle"
	var time = Timer.new()
	add_child(time)
	time.wait_time = 1.0
	time.start()
	_animated_sprite.play("idle")
	time.stop()

	
	
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	# Set the Initial Chicken State
	local_state = "idle"
	
	# connect to the signals from game.gd
	game.no_match_found.connect(_no_match_found)

	# Decide what color of egg to lay. unless the color is maxed out then choose something else
	egg_color = get_egg_color()


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
			# spawn egg scene if 
			
			spawn_egg(egg_color)
			# play the poof animation
			_animated_sprite.play("poof")
		else: 
			print("Chicken is hidden...")
