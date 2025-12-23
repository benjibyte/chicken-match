extends Area2D



# Get the egg's color from it's Mother Hen (the parent node)
@onready var _egg_sprites = $AnimatedSprite2D



# Disapear after a second when a match is found...
func _white_match_found():
	var time = Timer.new()
	add_child(time)
	time.wait_time = 1.0
	time.start()
	queue_free() # What if this kills all eggs when 1 match is found?

func _brown_match_found():
	var time = Timer.new()
	add_child(time)
	time.wait_time = 1.0
	time.start()
	queue_free()

func _blue_match_found():
	var time = Timer.new()
	add_child(time)
	time.wait_time = 1.0
	time.start()
	queue_free()

func _no_match_found():
	var time = Timer.new()
	add_child(time)
	time.wait_time = 1.0
	time.start()
	queue_free()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:

	var hen = get_parent()
	var egg_color = hen.egg_color

	# attach signals
	game.white_match_found.connect(_white_match_found)
	game.brown_match_found.connect(_brown_match_found)
	game.blue_match_found.connect(_blue_match_found)
	game.no_match_found.connect(_no_match_found)

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
	pass
	# when 3 eggs are up, then emit the match signal if all eggs are the same color

	
