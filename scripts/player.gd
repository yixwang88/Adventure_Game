extends CharacterBody2D


const SPEED = 120.0
const JUMP_VELOCITY = -300.0


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("ui_left", "ui_right")
	
	# flip the player
	if direction > 0:
		$AnimatedSprite2D.flip_h = true
	elif direction < 0:
		$AnimatedSprite2D.flip_h = false
	# run and idle animation
	if is_on_floor():
		if direction == 0:
			$AnimatedSprite2D.play("idle")
		else:
			$AnimatedSprite2D.play("run")	
	else:
		$AnimatedSprite2D.play("jump")	
		
	# apply movement
	if direction:
		velocity.x = direction * SPEED	
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
