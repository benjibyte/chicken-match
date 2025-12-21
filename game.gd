extends Node


var found_eggs := 0 # max 3
var brown_eggs := 0 # add the colored types, so we can compare to see if all the eggs are similar
var white_eggs := 0
var blue_eggs := 0

var max_chickens_selected := 3
var chickens_selected := 0
var chicken_states = [
	"idle", # Just existing. Hasn't been tapped/clicked yet.
	"hidden", # a match has occured. Once state has been recieved, butcher the chicken.
	"waiting" # Recently been tapped, has played the poof animation, and is hidden until 3 chickens has been tapped
	]

# func read_chicken_states():

#signal butcher

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	
	# once there are 3 eggs
	if found_eggs == 3:
		print("3 eggs have been laid!")
		print("brown eggs: " + str(brown_eggs))
		print("white eggs: " + str(white_eggs))
		print("blue eggs: " + str(blue_eggs))

		# Detect any matches
		if brown_eggs >= 3:
			print("Brown Egg match found!")
					 
		elif white_eggs >= 3:
			print("White Egg match found!")
		
		elif blue_eggs >= 3:
			print("Blue Egg match found!")	
			
		else: # No match was found
			print("No match has been found.")
