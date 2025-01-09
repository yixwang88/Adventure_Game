extends Control


# when pressed back, then change scene to main menu
func _on_back_pressed() -> void:
	get_tree().change_scene_to_file("res://secens/main_menu.tscn")
