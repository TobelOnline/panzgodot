extends Control


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
	
