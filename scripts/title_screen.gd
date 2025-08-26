extends Node2D

signal startGameSignal
signal openSettingsSignal


func _on_quit_button_pressed() -> void:
	get_tree().quit()


func _on_settings_button_pressed() -> void:
	openSettingsSignal.emit()
	

func _on_play_button_pressed() -> void:
	startGameSignal.emit()
