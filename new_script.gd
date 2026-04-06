extends CharacterBody2D

@export var gravity = 10 # pixels per second per second

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	

	
	velocity.y += gravity * delta
	
	if Input.is_key_pressed(KEY_W) and is_on_floor():
		velocity.y = -275
	

	move_and_slide()
	
