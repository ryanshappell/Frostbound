extends "res://objects/pickups/Pickup.gd"

func _ready():
	pickup_name = "broken button"

func pickup():
	queue_free()
