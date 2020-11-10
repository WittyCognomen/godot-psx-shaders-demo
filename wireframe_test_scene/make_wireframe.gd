extends MeshInstance

# from https://godotforums.org/discussion/20641/a-script-to-render-a-mesh-as-wireframe

enum MODES {LINES, DOTS}
export(MODES) var mode = MODES.LINES

func _ready():
	var a = mesh.surface_get_arrays(0)
	#var m = get_surface_material(0)
	var m = mesh.surface_get_material(0)
	print(m)
	
	mesh.surface_remove(0)
	
	if (mode == MODES.LINES):
		mesh.add_surface_from_arrays(Mesh.PRIMITIVE_LINES, a)
	elif (mode == MODES.DOTS):
		mesh.add_surface_from_arrays(Mesh.PRIMITIVE_POINTS, a)
		
	#mesh.get_surface_count()
	set_surface_material(0, m)
	mesh.surface_set_material(0, m)
