class_name Player
extends CharacterBody2D

@export var gravity = 1000 # pixels per second per second
@export var maximum_jumps = 100
@export var current_jumps = 0

@onready var starting_position = position

@onready var particles: CPUParticles2D = $CPUParticles2D

func reset():
	#current_jumps = 0
	#velocity = Vector2.ZERO
	position = starting_position
	
@onready var last_frame = is_on_floor()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:	
	
	velocity.y += gravity * delta
	
	if Input.is_action_just_pressed("jump") and current_jumps < maximum_jumps:
		current_jumps += 1
		velocity.y = -150
		velocity.x =  150

	move_and_slide()
	particles.emitting = last_frame != is_on_floor()
	
	
	last_frame = is_on_floor()
	
	if is_on_floor():
		velocity.x = 0
		current_jumps = 0
	
