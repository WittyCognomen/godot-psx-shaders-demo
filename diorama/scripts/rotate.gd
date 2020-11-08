extends Spatial

export var speed = 0.15

func _ready():
	pass
	
func _process(delta):
	global_transform.basis = global_transform.basis.rotated(Vector3(0,1,0), delta*speed)
