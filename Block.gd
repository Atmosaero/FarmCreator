extends MeshInstance


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var material

# Called when the node enters the scene tree for the first time.
func _ready():
	var material = self.get_node(".").get_surface_material(0)
	material.albedo_color = Color(1, 0, 0)

func _on_Area_input_event(camera, event, click_position, click_normal, shape_idx):
	print("cool!")
	build()
		
func build():
	set_surface_material(0, material)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
