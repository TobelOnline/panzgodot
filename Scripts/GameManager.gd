extends Node

# TODOs
# - Make better use of Godot Vector (UP, UPLEFT, ...)
# - arrange sprite frames according to Vector
# - move cursor: separate from vehicle -> save resources

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var allUnits : Array

var selected_unit : Node

var turns : int = 1 # count turns
var gameMode : int = 0
# Game Modes
#
# 0 - normal
# 1 - Select where to shoot
# 

# Width of tiles in pixel
var pixelWidth : int = 32

onready var ui = get_node("/root/Node2D/UI")
#onready var ui = get_node("/root/Node2D/")

func _ready():
	# activate fog of war
	get_node("/root/Node2D/Area2D/FOG").visible = true

#func _input(event):
#	if Input.is_action_just_released("left_click"):
#		print(str(self.get_path()) + ": Left Click")
#		match self.gameMode:
#			0: # normal / select mode
#				print(str(event.as_text()))
#				# 1. Check if on unit
#				# 2. if on unit can move?
#				# 3. select unit
#				# 4. activate move cursor
#				# 5. 
#			1: # move unit mode
#				pass
#			#self.endTurn()
#			#self.gameMode = 0;
#
##	if Input.is_action_just_released("ui_cancel"):
##		print("Esc pressend: action canceld")
##		self.gameMode = 0;


func endTurn():
	# when we're initialized, get all of the units
	allUnits = get_tree().get_nodes_in_group("Units")
	# reset attributes
	for x in range(allUnits.size()):
		allUnits[x].moves = allUnits[x].max_moves;
		
	# increases turns
	self.turns += 1
	ui.set_turnslabel("Turns: " + str(self.turns))
