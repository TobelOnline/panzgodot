extends Area2D


# unit attributes
export var moves : int = 10;  #number of moves per unit
export var max_moves : int = 3;
export var hitpoints : int = 14
export var max_hitpoints : int = 14
export var firepower : int = 8
export var shots : int = 1

# true if current vehicle is selected, e.g. for move
var isSelected : bool = false;
# direction for movement
var direction = Vector2()


# Called when the node enters the scene tree for the first time.
func _ready():
	$MoveCursor.visible=false
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var areas_in_motor = self.get_overlapping_areas()
	for single_area in areas_in_motor:
		if  single_area.visible == true and str(single_area.get_path()).begins_with("/root/Game/FogOfWar"):
			single_area.visible=false


func _on_Unit_input_event(viewport, event, shape_idx):
	# CHECK LEFT CLICK
	if event is InputEventMouseButton and event.button_index == BUTTON_LEFT and event.is_pressed() and not event.is_echo() and shape_idx == 0:
		# get all the Area2Ds
		var areas_in_motor = self.get_overlapping_areas()
		for single_area in areas_in_motor:
			single_area.get_path()
			single_area.visible=true
			print("Overlap : " + str(single_area))
	# Only damage nodes that have a function called “damage”
	#If single_area.has_method(“Damage”):
		#single_area.damage()
#	
	
		# only if 1st collision shape is clicked
		print("Clicked: " + str(self.get_node(self.get_path())) + " on Shape: " + str(shape_idx))
		# do only something IF main collision shape has input
		match GameManager.gameMode:
			0:
				# if all moves consumed for this turn => no change in game mode "move"
				if self.moves > 0:
					GameManager.gameMode = 1
					if GameManager.debug: print("Changed to game mode 1 (move)")
					self.isSelected = true
					$MoveCursor.visible=true
			# click on unit ends move game mode
			1:
				self.end_move()

#
# End move & clean up
#
func end_move():
	print("End move")
	GameManager.gameMode = 0
	# rests from game mode = 1 (move)
	
	$MoveCursor.visible = false
	self.isSelected = false
	# clean up from game mode = 2 (shoot)


#
# catch any input
#
func _input(event):
	# adapt move cursor to mouse position if GM = move (1)
	if  GameManager.gameMode == 1 and self.isSelected:
		self.update_move_cursor()
		
	# if left click -> do action accordingly to game mode
	if Input.is_action_just_released("left_click") and self.isSelected:
		print("Links click")
		if GameManager.gameMode == 1:
			# change game mode to "select"
			move()
			# if all moves are consumed -> top moving
			if self.moves < 1:
				self.end_move()


#		
# update position
#
func move():
	self.position = self.position + direction * GameManager.pixelWidth
	# displaye correct sprite frame : direction of vehicle
	set_sprite_frame(direction)
	# decrease moves
	if direction != Vector2(0,0):
		print("decrease moves")
		self.moves = self.moves -1
	# change control UI
	#ui.set_moveslabel("moves left: " + str(self.moves) + " / max moves:" + str(self.max_moves))
	# new orientation for ray scan

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
		$UnitSprite.set_frame(0)
	# left
	if direction.x == -1 and direction.y == 0:
		$UnitSprite.set_frame(4)
	# down
	if direction.x == 0 and direction.y == 1:
		$UnitSprite.set_frame(6)
	# up
	if direction.x == 0 and direction.y == -1:
		$UnitSprite.set_frame(2)
	# upper right
	if direction.x == 1 and direction.y == -1:
		$UnitSprite.set_frame(1)
	# lower right
	if direction.x == 1 and direction.y == 1:
		$UnitSprite.set_frame(7)
	# upper left
	if direction.x == -1 and direction.y == -1:
		$UnitSprite.set_frame(3)
	# lower left
	if direction.x == -1 and direction.y == 1:
		$UnitSprite.set_frame(5)
