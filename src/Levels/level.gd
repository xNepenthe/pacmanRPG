extends Node2D
class_name DefaultLevel

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Input.is_action_pressed('zoom'):
		$Camera2D.zoom = Vector2(10, 10)
	
	if Input.is_action_just_released('zoom'):
		$Camera2D.zoom = Vector2(5, 5)
