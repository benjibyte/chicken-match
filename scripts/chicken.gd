extends Area2D

@onready var _animated_sprite = $AnimatedSprite2D

var colors = ["white", "brown", "blue"]
var egg_color := "not chosen yet"

func spawn_egg(color):
	pass

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	# Set the Initial Chicken State
	# Decide what color of egg to lay.
	color = randi_range(0,2)
	egg_color = colors[color]


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _input_event(viewport: Viewport, event: InputEvent, shape_idx: int) -> void:
	print("click!")
	spawn_egg(
	# spawn egg scene
	# play the poof animation
	# set the global "state" variable to "waiting."
	
