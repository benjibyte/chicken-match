extends Node

const egg_max := 9
var found_eggs := 0
var chicken_states = [
	"idle", # Just existing. Hasn't been tapped/clicked yet.
	"hidden", # a match has occured. Once state has been recieved, butcher the chicken.
	"waiting" # Recently been tapped, has played the poof animation, and is hidden until 3 chickens has been tapped
	]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
