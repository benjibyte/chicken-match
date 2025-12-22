extends Node


signal white_match_found
signal brown_match_found
signal blue_match_found

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


func _white_match_found():
	pass


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Game Loop, wait for a match to be found, or cover up all the eggs with chickens again.
func _process(_delta: float) -> void:
	
	if game.found_eggs == 3:
		# White match
		if game.white_eggs == 3:
			# emit signal if all three eggs are the same color
			print("White match found!")
			white_match_found.emit()
			

		# Brown match
		elif game.brown_eggs == 3:
			# emit signal if all three eggs are the same color
			print("Brown match found!")
			brown_match_found.emit()

		# Blue match
		elif game.blue_eggs == 3:
			# emit signal if all three eggs are the same color
			print("Blue match found!")
			blue_match_found.emit()

		else:
			print("No match found...")
			# reset the chickens to idle state
			for chicken in get_tree().get_nodes_in_group("chickens"):
				chicken.local_state = "idle"
				chicken._animated_sprite.play("idle")
			
			# reset egg counts
			game.found_eggs = 0
			game.white_eggs = 0
			game.brown_eggs = 0
			game.blue_eggs = 0
			game.chickens_selected = 0