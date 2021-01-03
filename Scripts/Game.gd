extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$FogOfWar.visible = true
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	for fogTile in get_tree().get_nodes_in_group("FOG"):
		fogTile.visible = true
