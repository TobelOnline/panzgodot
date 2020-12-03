extends Area2D

# TODO
# - GameManager Gamemode: local or always reference?


# Declare member variables here.
export var moves : int = 3;  #number of moves per unit
export var max_moves : int = 3;

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
	print("Game Mode: " + str(GameManager.gameMode))
	if GameManager.gameMode == 1 and self.isSelected:
		self.update_move_cursor()
		
	
#	# if left click -> do action accordingly to game mode
#	if Input.is_action_just_released("left_click") and self.isSelected:
#		print("Left mouse button released.")
#		if GameManager.gameMode == 0: 
#			if self.moves > 0:
#				# change game mode to "move" 
#				GameManager.gameMode = 1
#				# show mode cursor
#				$MoveCursor.visible = true
#				# identify selected vehicle
#				self.isSelected = true
#				# Change info bar
#				ui.set_moveslabel("moves left: " + str(self.moves) + " / max moves:" + str(self.max_moves))
#		# Quit move mode and enter game mode: select (0)
#		elif GameManager.gameMode == 1:
#			print("Click and change Game Mode to 0")
#			# change game mode to "select"
#			move()
			

#		
# SIGNAL: if click on vehicle
#
func _on_Vehicle_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == BUTTON_LEFT and event.is_pressed() and not event.is_echo():
			# only if 1st collision shape is clicked
			if shape_idx == 0:
				match GameManager.gameMode:
					0:
						print("Clicked: " + str(self.get_node(self.get_path())) + " on Shape: " + str(shape_idx))
						self.isSelected = true
						$MoveCursor.visible=true
						$VehicleSprite.visible=false
						GameManager.gameMode = 1
					1:
						print("Clicked: " + str(self.get_node(self.get_path())) + " on Shape: " + str(shape_idx))
						self.isSelected = false
						$MoveCursor.visible=false
						$VehicleSprite.visible=true
						GameManager.gameMode = 0

#	# mouse pressed
#	if event is InputEventMouseButton and event.pressed:
#		print(str(self.get_path()) + ": Node clicked")
#		print("Clicked at: " + str(event.position))
#		print("Unit position: " +str(self.position))
#		# Enter game mode: move (1), only if moves left			
#		if GameManager.gameMode == 0: 
#			if self.moves > 0:
#				# change game mode to "move" 
#				GameManager.gameMode = 1
#				# show mode cursor
#				$MoveCursor.visible = true
#				# identify selected vehicle
#				self.isSelected = true
#				# Change info bar
#				ui.change_Label("moves left: " + str(self.moves) + " / max moves:" + str(self.max_moves))
#		# Quit move mode and enter game mode: select (0)
#		elif GameManager.gameMode == 1:
#			print("Click and change Game Mode to 0")
#			# change game mode to "select"
#			self.end_move()

#func _unhandled_input(event):
#	if (event is InputEventMouseButton) and event.pressed and self.isSelected:
#		print("global event") 
#		print("Clicked at: " + str(event.position))
#		print("Unit position before: " +str(self.position))
#		if self.isSelected:
#			if GameManager.gameMode == 1:
#				# move vehicle
#				move(direction)
#				print("Unit position after: " +str(self.position))
			
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
		# if all moves are consumed -> top moving
		if self.moves < 1:
			self.end_move()
		
	#else:
	#	var collider = ray.get_collider()
#		if collider.is_in_group('box'):
#			if collider.move(dir):#
#				position += vector_pos#
#	self.position = self.position + direction * GameManager.pixelWidh
#
# End move & clean up
#
func end_move():
	GameManager.gameMode = 0
	$MoveCursor.visible = false
	self.isSelected = false
	ui.set_moveslabel("Was hier los?")

func update_move_cursor():
	# get pixel width of tiles
	var pixelW = GameManager.pixelWidth
	# get global mouse pos
	var mousepos = get_global_mouse_position()
	print("mousepos: " + str(mousepos))
	print("position : " + str(self.position))
	print("position X + 32 : " + str(self.position.x + pixelW))
	print("position Y + 32 : " + str(self.position.y + pixelW))
#
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

