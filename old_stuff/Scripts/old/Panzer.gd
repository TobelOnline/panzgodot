extends KinematicBody2D

func _ready():
	print ("Create Panzer")
# called when an input event takes place on the tile


func _on_Panzer_input_event(viewport, event, shape_idx):
	print("Panzer clicked")
