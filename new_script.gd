extends CharacterBody2D

@export var gravity = 1000 # pixels per second per second
@export var maximum_jumps = 100
@export var current_jumps = 0

@onready var starting_position = position

func reset():
	current_jumps = 0
	velocity = Vector2.ZERO
	position = starting_position 

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:	
	velocity.y += gravity * delta
	
	if Input.is_action_just_pressed("jump") and current_jumps < maximum_jumps:
		current_jumps += 1
		velocity.y = -150
		velocity.x =  150

	move_and_slide()
	
	if is_on_floor():
		velocity.x = 0
		current_jumps = 0
	
