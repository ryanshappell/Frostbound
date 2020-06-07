extends "res://objects/pickups/Pickup.gd"

func _ready():
	pickup_name = "code paper"

func pickup():
	queue_free()

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
