extends Panel

onready var ButtonA = get_node("Button1")
onready var ButtonB = get_node("Button2")
onready var ButtonC = get_node("Button3")
onready var ButtonD = get_node("Button4")

func _ready():
	pass
	
func _process(delta):
	if ButtonA.pressed:
		BaseDate.BrushID = 1
		print(BaseDate.BrushID)
	if ButtonB.pressed:
		BaseDate.BrushID = 2
		print(BaseDate.BrushID)
	if ButtonC.pressed:
		BaseDate.BrushID = 3
		print(BaseDate.BrushID)
	if ButtonD.pressed:
		BaseDate.BrushID = 4
		print(BaseDate.BrushID)

