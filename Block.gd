extends MeshInstance

var material = SpatialMaterial.new()

export(Material) var textureWater
export(Material) var textureGrass
export(Material) var textureDirt


func _on_Area_input_event(camera, event, click_position, click_normal, shape_idx):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT and event.pressed == true:
			print("BrushID", BaseDate.BrushID)
			if BaseDate.BrushID == 1:#Red
				material.albedo_color = Color(1, 0, 0)
				 
				set_surface_material(0, material)
				print("BrushID", BaseDate.BrushID)
			if BaseDate.BrushID == 2:#Green
				#material.albedo_color = Color(0, 1, 0, 1)
				set_surface_material(0, textureGrass)	
				print("BrushID", BaseDate.BrushID)
			if BaseDate.BrushID == 3:#Blue
				set_surface_material(0, textureWater)	
				print("BrushID", BaseDate.BrushID)
			if BaseDate.BrushID == 4:#Brown
				set_surface_material(0, textureDirt)	
				print("BrushID", BaseDate.BrushID)
	
func _ready():
	pass
