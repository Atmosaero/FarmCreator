extends MeshInstance


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_Area_input_event(camera, event, click_position, click_normal, shape_idx):
	print("cool!")
	self.build()
		
func build():
	self.modulate = Color(0,0,1)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
