extends "res://objects/pickups/Pickup.gd"

func _ready():
	pickup_name = "flashlight"

func pickup():
	queue_free()
