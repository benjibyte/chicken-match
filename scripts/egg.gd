extends Area2D

# Get the egg's color from it's Mother Hen (the parent node)



@onready var _egg_sprites = $AnimatedSprite2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:

	var hen = get_parent()
	var egg_color = hen.egg_color

	# Set sprite based on color
	if egg_color == "white":
		# Attach the white sprite frame
		_egg_sprites.play("white")
		game.white_eggs += 1
	elif egg_color == "brown":
		# Attach the brown sprite frame
		_egg_sprites.play("brown")
		game.brown_eggs += 1
	elif egg_color == "blue":
		# Attach the blue sprite frame
		_egg_sprites.play("blue")
		game.blue_eggs += 1
	else:
		print("Couldn't find a color!")
	
	game.found_eggs += 1


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	
	# Listen if 3 chickens were flipped over then wait a little bit with a TIMER,
	# Then once timer is up, tell parent to change their chicken state and sprite to visible and idle,
	# then the egg terminates.
	pass
