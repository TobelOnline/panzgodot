extends KinematicBody2D
var grid_size = 16
var inputs = {
	'ui_up' : Vector2.UP,
	'ui_down' : Vector2.DOWN,
	'ui_right' : Vector2.RIGHT,
	'ui_left' : Vector2.LEFT
	
}

onready var ray = $RayCast2D

func move(dir):
	var vector_pos = inputs[dir] * grid_size
	# update position
	ray.cast_to = vector_pos
	# update ray cast
	ray.force_raycast_update()
	# if it is NOT colliding...
	if !ray.is_colliding():
		#...update position (move)
		position += vector_pos
		return true
		
	return false
