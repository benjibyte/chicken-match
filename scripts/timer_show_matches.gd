extends Timer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	# Listen if 3 chickens were flipped over then wait a little bit with a TIMER,
	# Then once timer is up, tell parent to change their chicken state and sprite to visible and idle,
	# then the egg terminates.
	pass
	
