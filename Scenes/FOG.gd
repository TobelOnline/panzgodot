extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

onready var ray = $RayCast2D


# Called when the node enters the scene tree for the first time.
func _ready():
	add_to_group("fog")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_FOGElement_area_entered(area):
	self.visible = false;
	# update ray cast
	



func _on_FOGElement_area_exited(area):
	self.visible = true;
