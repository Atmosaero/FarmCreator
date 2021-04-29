extends MeshInstance



const Speed = 0.01
var LightStatus = true
var LightObject

var Camera1
var Camera2
var CameraStatus = false

func _ready():
	Camera1 = get_node("Camera")
	Camera2 = get_node("CameraHigh")
	LightObject = get_node("Camera/DirectionalLight")
func _process(delta):
	Camera2.current = CameraStatus
	#Move
	if Input.is_action_pressed("right"):
		rotate_y(-Speed)
	if Input.is_action_pressed("left"):
		rotate_y(Speed)
	#Light
	if Input.is_action_just_pressed("Light"):
		LightStatus = !LightStatus
		LightObject.visible = LightStatus
	if Input.is_action_just_pressed("CameraTranslate"):
		CameraStatus = !CameraStatus
