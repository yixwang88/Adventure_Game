extends Control


func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://secens/game.tscn")


func _on_setting_pressed() -> void:
	get_tree().change_scene_to_file("res://secens/optionsMain_menu.tscn")


func _on_exit_pressed() -> void:
	get_tree().quit()
