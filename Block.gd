extends MeshInstance


onready var GlobalSrc = get_node("/root/Menu")

var materialStatus = GlobalSrc.MaterialSelect

var material = SpatialMaterial.new()

func _ready():
	pass
	

func _on_Area_input_event(camera, event, click_position, click_normal, shape_idx):
	build()
	print(materialStatus)
func build():
	if materialStatus == "Strawberry":
		material.albedo_color = Color(1, 0, 0)
		set_surface_material(0, material)
	if materialStatus == "Water":
		material.albedo_color = Color(0, 0, 1, 1)
		set_surface_material(0, material)	
