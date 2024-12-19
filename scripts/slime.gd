extends Node2D


const speed = 50
var direction = 1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if $RayCastRight.is_colliding():
		direction =-1
		$AnimatedSprite2D.flip_h =true
	if $RayCastLeft.is_colliding():
		direction =1
		$AnimatedSprite2D.flip_h = false

	position.x += speed * delta * direction
