extends Control

# when pressed start, then change scene to game1
func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://secens/game1.tscn")

# when pressed setting, then change scene to option menu
func _on_setting_pressed() -> void:
	get_tree().change_scene_to_file("res://secens/optionsMain_menu.tscn")

# when pressed exit, then exit
func _on_exit_pressed() -> void:
	get_tree().quit()
