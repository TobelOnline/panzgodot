extends Node

# TODOs
# - Make better use of Godot Vector (UP, UPLEFT, ...)
# - arrange sprite frames according to Vector
# - move cursor: separate from vehicle -> save resources
# - put unit declaration into extra file

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var allUnits : Array

# for game mode 2 (shoot) to identify correct unit to show crosshair
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

func _input(event):
	if Input.is_action_just_pressed("ui_accept"):
		print("ui_accept (Enter) presseds")
		match self.gameMode:
			0: # normal / select mode
				self.endTurn()
			1: # move unit mode
				self.endTurn()
				self.gameMode = 0;

func endTurn():
	print(str(self.turns) + " Turn ended")
	# when we're initialized, get all of the units
	allUnits = get_tree().get_nodes_in_group("Units")
	# reset attributes
	for x in range(allUnits.size()):
		allUnits[x].moves = allUnits[x].max_moves;
		
	# increases turns
	self.turns += 1
	ui.set_turnslabel("Turns: " + str(self.turns))
	
	self.gameMode = 0

#
# Unit declarations
# 
func get_shoot_circle(unit):
	# local shoot circle var
	var shoot_circle = Array()
	# fill local var with values depending on called parameter
	match unit:
		"Hornisse":
			shoot_circle.append(Vector2(0,-1))
			shoot_circle.append(Vector2(1,-1))
	
	return shoot_circle
