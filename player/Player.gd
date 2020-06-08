extends KinematicBody2D

# Movement
var velocity = Vector2()
var speed = 50
var acceleration = 400
var deceleration = 400

onready var sprite = $Sprite
onready var animationPlayer = $AnimationPlayer
onready var playerInteraction = $PlayerInteraction

var interactables

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _physics_process(delta):
	move(delta)
	
	interactables = playerInteraction.get_overlapping_areas()
	if Input.is_action_just_pressed("interact") && !interactables.empty():
		print(interactables[0].pickup_name)
		interactables[0].pickup()

func move(delta):
	var input_vector = Vector2.ZERO
	input_vector.x = Input.get_action_strength("right") - Input.get_action_strength("left")
	input_vector.y = Input.get_action_strength("down") - Input.get_action_strength("up")
	input_vector = input_vector.normalized()

	if input_vector != Vector2.ZERO:
		velocity = velocity.move_toward(input_vector * speed, acceleration * delta)
		sprite.rotation = input_vector.angle() + PI / 2
		animationPlayer.play("walk")
	else:
		velocity = velocity.move_toward(Vector2.ZERO, deceleration * delta)
		animationPlayer.play("idle")

	velocity = move_and_slide(velocity)

