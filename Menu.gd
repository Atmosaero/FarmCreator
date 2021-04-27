extends Panel

var MaterialSelect 

func _on_A_pressed():
	MaterialSelect == 1
	print(MaterialSelect)

func _on_B_pressed():
	MaterialSelect == 2
	print(MaterialSelect)
func _on_D_pressed():
	MaterialSelect == "Potato"
	print(MaterialSelect)

func _on_C_pressed():
	MaterialSelect == "Water"
	print(MaterialSelect)
