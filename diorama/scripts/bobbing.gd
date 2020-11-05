extends Spatial

var time = 0
onready var pos = global_transform.origin

func _ready():
	pass

func _process(delta):
	time += delta
	global_transform.origin = Vector3(pos.x, pos.y+sin(time*2.0)*0.2, pos.z)
	global_transform.basis = Basis.rotated(Vector3(1,0,0), sin(time)*0.14-.1).rotated(Vector3(0,0,1), sin(time*0.4)*0.08)
