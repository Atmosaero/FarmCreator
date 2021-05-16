extends MeshInstance

var material = SpatialMaterial.new()
var EnterColor = Color(0.63, 0.13, 0.94, 1)
var ExitColor = Color(1, 1, 1, 1)

export(Material) var textureWater
export(Material) var textureGrass
export(Material) var textureDirt
export(Material) var textureAsphalt
export(Material) var textureSand
export(Material) var textureSnow

func _process(delta):
	set_surface_material(0, material)
	
	
func _on_Area_input_event(camera, event, click_position, click_normal, shape_idx):
	material.albedo_color = EnterColor
	if Input.is_action_pressed("left_mouse"):
			if BaseDate.BrushID == 1:#Asphalt
				material = textureAsphalt
				
			if BaseDate.BrushID == 2:#Green
				material = textureGrass
			if BaseDate.BrushID == 3:#Blue
				material = textureWater
				
			if BaseDate.BrushID == 4:#Brown
				material = textureDirt
				
func _on_Area_mouse_exited():
	material.albedo_color = ExitColor
