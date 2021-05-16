extends Camera



var move = Vector3(0,1,1)
var Scroller
var ScrollInt
func _ready():
	Scroller = get_node("HSlider")
func _process(delta):
	ScrollInt
	if Input.is_action_just_released("ScrollDown") && Scroller.value < 50 && BaseDate.CameraStatus == false:
		translate(move)
		Scroller.value += 1
	if Input.is_action_just_released("ScrollUp") && Scroller.value > 15 && BaseDate.CameraStatus == false:
		translate(-move)
		Scroller.value -= 1
	
#

