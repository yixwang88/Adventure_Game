extends Area2D

# This function is called when player enters the Area2D node.
func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		Engine.time_scale = 0.5
		body.get_node("CollisionShape2D").queue_free()
		$Timer.start()

# This function is called when the Timer node's timeout signal is emitted.
func _on_timer_timeout() -> void:
	Engine.time_scale = 1
	get_tree().reload_current_scene()
