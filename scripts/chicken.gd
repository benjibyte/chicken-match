extends Area2D

@onready var _animated_sprite = $AnimatedSprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _input_event(viewport: Viewport, event: InputEvent, shape_idx: int) -> void:
	print("click!")
	# spawn egg scene
	# play the poof animation
	# set the global "state" variable to "waiting."
	
