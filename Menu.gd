extends Panel

#Buttons
var A
var B
var C
var D

var MaterialSelect


func _ready():
	A = get_node("A")
	B = get_node("B")
	C = get_node("C")
	D = get_node("D")

func _process(delta):
	if A.pressed:
		MaterialSelect == "Strawberry"
	if B.pressed:
		MaterialSelect == "Water"
	if C.pressed:
		MaterialSelect == "Cabbage"
	if D.pressed:
		MaterialSelect == "Potato"
		
	

