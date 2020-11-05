extends Camera


func _ready():
	pass

func _process(delta):
	global_transform = global_transform.looking_at(get_node("../../CamRoot").global_transform.origin, Vector3(0,1,0))
