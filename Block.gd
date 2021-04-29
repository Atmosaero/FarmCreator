extends MeshInstance

var material = SpatialMaterial.new()
var MaterialBrush 

func _process(delta):
	MaterialBrush = Menu.MaterialBrush
	print(Menu.x)
func _on_Area_input_event(camera, event, click_position, click_normal, shape_idx):
	print(Menu.x)
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT and event.pressed == true:
			print(Menu.MaterialBrush)
			if Menu.MaterialBrush == 1:#Red
				material.albedo_color = Color(1, 0, 0)
				set_surface_material(0, material)
				print(Menu.MaterialBrush)
			if Menu.MaterialBrush == 2:#Green
				material.albedo_color = Color(0, 1, 0, 1)
				set_surface_material(0, material)	
				print(Menu.MaterialBrush)
			if Menu.MaterialBrush == 3:#Blue
				material.albedo_color = Color(0, 0, 1, 1)
				set_surface_material(0, material)	
				print(Menu.MaterialBrush)
			if Menu.MaterialBrush == 4:#Brown
				material.albedo_color = Color( 0.65, 0.16, 0.16, 1)
				set_surface_material(0, material)	
				print(Menu.MaterialBrush)
	
func _ready():
	print(Menu.x)
