extends MeshInstance

var ButtonLight
var ButtonCam

const Speed = 0.01
const Speed2 = 0.001
var LightStatus = true
var LightObject

var Camera1
var Camera2
var CameraStatus = false

func _ready():
	Camera1 = get_node("Camera")
	Camera2 = get_node("/root/Main/Terrain/CameraHigh")
	
	ButtonLight = get_node("ButtonLight")
	ButtonCam = get_node("ButtonCamera")
	
	LightObject = get_node("Camera/DirectionalLight")
func _process(delta):
	Camera2.current = CameraStatus
	#Move
	if Input.is_action_pressed("right") && CameraStatus == false:
		rotate_y(-Speed)
	if Input.is_action_pressed("left") && CameraStatus == false:
		rotate_y(Speed)
	#Light
	if Input.is_action_just_pressed("Light") || ButtonLight.pressed:
		LightStatus = !LightStatus
		LightObject.visible = LightStatus
	if Input.is_action_just_pressed("CameraTranslate") || ButtonCam.pressed:
		CameraStatus = !CameraStatus
