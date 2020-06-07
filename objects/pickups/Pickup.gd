extends Area2D

var pickup_name
onready var sprite = $Sprite

func _ready():
	add_to_group("pickups")

func pickup():
	pass

func _on_Pickup_area_entered(_area):
	sprite.frame = 1

func _on_Pickup_area_exited(_area):
	sprite.frame = 0
