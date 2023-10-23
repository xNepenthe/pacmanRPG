extends CharacterBody2D

var speed: int = 100

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var directions = Input.get_vector("left", "right", "up", "down")
	if Input.is_anything_pressed():
		velocity = directions * speed
	move_and_slide()
