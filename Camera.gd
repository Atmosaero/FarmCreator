extends MeshInstance



const Speed = 0.01
var LightStatus = true
var LightObject
func _ready():
	LightObject = get_node("Camera/DirectionalLight")
func _process(delta):
	#Move
	if Input.is_action_pressed("right"):
		rotate_y(-Speed)
	if Input.is_action_pressed("left"):
		rotate_y(Speed)
	#Light
	if Input.is_action_just_pressed("Light"):
		LightStatus = !LightStatus
		LightObject.visible = LightStatus
	
