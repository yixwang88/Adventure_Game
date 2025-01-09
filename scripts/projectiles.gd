extends Area2D

var travl_distance = 0
func _physics_process(delta: float) -> void:
	const speed = 1000
	const range = 1200
	
	var direction =Vector2.RIGHT.rotated(rotation)
	position += direction*speed*delta
	travl_distance += speed*delta
	
#	if projectiles out of range, it will dispear
	if travl_distance > range:
		queue_free()


func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		queue_free()
		body.get_node("CollisionShape2D").queue_free()
		
