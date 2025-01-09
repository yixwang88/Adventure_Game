extends Area2D

@onready var prick_body = $"../RigidBody2D"

 

func _on_body_entered(body: Node2D) -> void:
	print("Body entered:", body.name)
	print("Body group membership:", body.get_groups())
	if body.is_in_group("Player"):
		print("Player entered the trigger zone!")
		prick_body.gravity_scale = 1
