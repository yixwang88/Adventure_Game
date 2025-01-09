extends Node2D


func shoot():
	const PRO= preload("res://secens/projectiles.tscn")
	var new_p = PRO.instantiate()
	
