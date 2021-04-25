extends Control

const TIMER_LIMIT = 2.0
var timer = 0.0

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var gameManager = get_node("/root/GameManager")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func set_moveslabel(text):
	$MovesLabel.text=text

func set_turnslabel(text):
	$TurnsLabel.text=text

func _on_Button_toggled(button_pressed):
	print("End turn")
	gameManager.endTurn()

func _on_Button_pressed():
	print("End turn")
	gameManager.endTurn()
	
func _process(delta):
	$FPSLabel.text = "FPS: " + str(Engine.get_frames_per_second())
	timer += delta
	if timer > TIMER_LIMIT: # Prints every 2 seconds
		timer = 0.0
		#print("fps: " + str(Engine.get_frames_per_second()))
