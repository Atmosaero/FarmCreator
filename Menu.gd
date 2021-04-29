extends Panel

var MaterialBrush

var x = 6

func _ready():
	x = 10
	MaterialBrush = 0
func _on_A_pressed():
	x = 5
	MaterialBrush = 1
	print(x)

func _on_B_pressed():
	MaterialBrush = 2
	print(MaterialBrush)

func _on_C_pressed():
	MaterialBrush = 3
	print(MaterialBrush)

func _on_D_pressed():
	MaterialBrush = 4
	print(MaterialBrush)
