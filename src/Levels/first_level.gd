extends DefaultLevel

var leftPortalEntrance: Marker2D
var rightPortalEntrance: Marker2D

# Called when the node enters the scene tree for the first time.
func _ready():
	leftPortalEntrance = $PositionMarkers/LeftPortalEntrance
	rightPortalEntrance = $PositionMarkers/RightPortalEntrance


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func _on_left_portal_body_entered(body):
	body.position = rightPortalEntrance.position


func _on_right_portal_body_entered(body):
	body.position = leftPortalEntrance.position
