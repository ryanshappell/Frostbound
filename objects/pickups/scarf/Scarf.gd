extends "res://objects/pickups/Pickup.gd"

func _ready():
	pickup_name = "scarf"

func pickup():
	queue_free()
