extends "res://objects/pickups/Pickup.gd"

func _ready():
	pickup_name = "button"

func pickup():
	queue_free()
