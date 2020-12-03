extends Area2D

# TODO
# - GameManager Gamemode: local or always reference?


# Declare member variables here.
export var moves : int = 3;  #number of moves per unit
export var max_moves : int = 3;
export var hitpoints : int = 14
export var max_hitpoints : int = 14
export var firepower : int = 8

# direction for movement
var direction = Vector2()
# true if current vehicle is selected, e.g. for move
var isSelected : bool = false;

onready var ray = $RayCast2D
onready var ui = get_node("/root/Node2D/UI")


# Called when the node enters the scene tree for the first time.
func _ready():
	# hide move arrow
	#$MoveCursor.visible = false
	print("Panzer 2 created")
	add_to_group("Units")
	$CollisionShape2D.set_process(false)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _input(event):
	if GameManager.gameMode == 1 and self.isSelected:
		self.update_move_cursor()	
	# if left click -> do action accordingly to game mode
	if Input.is_action_just_released("left_click") and self.isSelected:
		if GameManager.gameMode == 1:
			# change game mode to "select"
			move()
			# if all moves are consumed -> top moving
			if self.moves < 1:
				self.end_move()
	# if "ESC" is pressed and game mode "move" -> end game mode
	if Input.is_action_just_pressed("ui_cancel") and self.isSelected:
		self.end_move()
	if Input.is_action_just_released("ui_accept"):
		match GameManager.gameMode:
			0: # normal / select mode
					pass
			1: # move unit mode
				self.end_move()
				GameManager.gameMode = 0;
				GameManager.endTurn()

#		
# SIGNAL: if click on vehicle
#
func _on_Vehicle_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == BUTTON_LEFT and event.is_pressed() and not event.is_echo():
			# only if 1st collision shape is clicked
			print("Clicked: " + str(self.get_node(self.get_path())) + " on Shape: " + str(shape_idx))
			# do only something IF main collision shape has input
			if shape_idx == 0:
				match GameManager.gameMode:
					0:
						# if all moves consumed for this turn => no change in game mode "move"
						if self.moves > 0:
							print("Change to game mode 1")
							self.isSelected = true
							$MoveCursor.visible=true
							$VehicleSprite.visible=false
							GameManager.gameMode = 1
					1:
						self.end_move()
#		
# update position
#
func move():
	# new orientation for ray scan
	ray.cast_to = direction * GameManager.pixelWidth
	# update ray cast
	ray.force_raycast_update()
	# if it is NOT colliding...
	if !ray.is_colliding():
		#...update position (move)
		self.position = self.position + direction * GameManager.pixelWidth
		# displaye correct sprite frame : direction of vehicle
		set_sprite_frame(direction)
		# decrease moves
		if direction != Vector2(0,0):
			print("decrease moves")
			self.moves = self.moves -1
		# change control UI
		ui.set_moveslabel("moves left: " + str(self.moves) + " / max moves:" + str(self.max_moves))
#
# End move & clean up
#
func end_move():
	print("End move")
	GameManager.gameMode = 0
	$MoveCursor.visible = false
	$VehicleSprite.visible = true
	self.isSelected = false
	ui.set_moveslabel("Was hier los?")
#
# Update move cursor according to mouse position
#
func update_move_cursor():
	# get pixel width of tiles
	var pixelW = GameManager.pixelWidth
	# get global mouse pos
	var mousepos = get_global_mouse_position()
	direction = Vector2(0,0)
	# start frame is always center frame
	$MoveCursor.set_frame(0)
	# right
	if mousepos.x > (position.x + pixelW):
		$MoveCursor.set_frame(1)
		direction.x = 1
		direction.y = 0
	# left
	if mousepos.x < position.x:
		$MoveCursor.set_frame(5)
		direction.x = -1
		direction.y = 0
	# down
	if mousepos.y > (position.y + pixelW):
		$MoveCursor.set_frame(7)
		direction.x = 0
		direction.y = 1
	# up
	if mousepos.y < position.y:
		$MoveCursor.set_frame(3)
		direction.x = 0
		direction.y = -1
	# upper right
	if mousepos.x > (position.x + pixelW) and mousepos.y < position.y:
		$MoveCursor.set_frame(2)
		direction.x = 1
		direction.y = -1
	# lower right
	if mousepos.x > (position.x + pixelW) and mousepos.y > position.y + pixelW:
		$MoveCursor.set_frame(8)
		direction.x = 1
		direction.y = 1
	# upper left
	if mousepos.x < (position.x) and mousepos.y < position.y:
		$MoveCursor.set_frame(4)
		direction.x = -1
		direction.y = -1
	# lower left
	if mousepos.x < (position.x) and mousepos.y > position.y + pixelW:
		$MoveCursor.set_frame(6)
		direction.x = -1
		direction.y = 1
#
# Set the right sprite frame corresponding to the direction
#
func set_sprite_frame(dir):
	# right
	if direction.x == 1 and direction.y == 0:
		$VehicleSprite.set_frame(0)
	# left
	if direction.x == -1 and direction.y == 0:
		$VehicleSprite.set_frame(4)
	# down
	if direction.x == 0 and direction.y == 1:
		$VehicleSprite.set_frame(6)
	# up
	if direction.x == 0 and direction.y == -1:
		$VehicleSprite.set_frame(2)
	# upper right
	if direction.x == 1 and direction.y == -1:
		$VehicleSprite.set_frame(1)
	# lower right
	if direction.x == 1 and direction.y == 1:
		$VehicleSprite.set_frame(7)
	# upper left
	if direction.x == -1 and direction.y == -1:
		$VehicleSprite.set_frame(3)
	# lower left
	if direction.x == -1 and direction.y == 1:
		$VehicleSprite.set_frame(5)



func _on_Area2D_mouse_entered():
	$Area2D/ContextInfo.visible=true


func _on_Area2D_mouse_exited():
	$Area2D/ContextInfo.visible=false
