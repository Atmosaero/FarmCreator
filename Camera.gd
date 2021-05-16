extends MeshInstance

var ButtonLight
var ButtonCam

const Speed = 0.01



var Camera1
var Camera2
var CameraStatus = false

func _ready():
	Camera1 = get_node("Camera")
	Camera2 = get_node("/root/Main/Terrain/CameraHigh")
	
	ButtonCam = get_node("ButtonCamera")
	
func _process(delta):
	Camera2.current = CameraStatus
	#Move
	if Input.is_action_pressed("right") && CameraStatus == false:
		rotate_y(-Speed)
	if Input.is_action_pressed("left") && CameraStatus == false:
		rotate_y(Speed)
	if Input.is_action_just_pressed("CameraTranslate") || ButtonCam.pressed && Input.is_action_just_pressed("left_mouse"):
		CameraStatus = !CameraStatus
