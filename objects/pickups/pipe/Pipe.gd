extends "res://objects/pickups/Pickup.gd"

func _ready():
	pickup_name = "pipe"

func pickup():
	queue_free()
