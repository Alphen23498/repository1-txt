extends CharacterBody2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	velocity .x = 0 
	velocity .y = 0
	if Input. is_key_pressed(Key_W):
		velocity.y + -100
	if Input. is_key_pressed(Key_A):
		velocity.x = -100
	if Input. is_key_pressed(Key_D):
		velocity.x = 100
