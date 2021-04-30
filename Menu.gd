extends Panel

var MaterialBrush

var x = 15

func _ready():
	MaterialBrush = 1
	print(MaterialBrush)
	return MaterialBrush
	
func _on_A_pressed():
	MaterialBrush = 1
	print(MaterialBrush)
	return MaterialBrush
	
func _on_B_pressed():
	MaterialBrush = 2
	print(MaterialBrush)
	return MaterialBrush
	
func _on_C_pressed():
	MaterialBrush = 3
	print(MaterialBrush)

func _on_D_pressed():
	MaterialBrush = 4
	print(MaterialBrush)
