extends DefaultLevel

var leftPortalEntrance: Marker2D
var rightPortalEntrance: Marker2D
var pellet = preload('res://src/Items/pellet.tscn')

# Called when the node enters the scene tree for the first time.
func _ready():
	leftPortalEntrance = $PositionMarkers/LeftPortalEntrance
	rightPortalEntrance = $PositionMarkers/RightPortalEntrance
	var pelletsMarkers = $PositionMarkers/Pellets.get_children()
	spawn_pellets(pelletsMarkers)

func spawn_pellets(pelletsMarkers) -> void:
	for marker in pelletsMarkers:
		var newPellet = pellet.instantiate() as Area2D
		newPellet.position = marker.position
		$Pellets.add_child(newPellet)	

func _on_left_portal_body_entered(body):
	body.position = rightPortalEntrance.position


func _on_right_portal_body_entered(body):
	body.position = leftPortalEntrance.position
