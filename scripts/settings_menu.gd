extends Node2D
@onready var resolution_button: OptionButton = $ResolutionButton

signal closeSignal



func pause() -> void:
	get_tree().paused = true
	show()
	
func resume() -> void:
	get_tree().paused = false
	hide()

func _on_back_button_pressed() -> void:
	closeSignal.emit()


func _on_resolution_button_item_selected(index: int) -> void:
	var scalefac : int = resolution_button.get_item_id(index)
	DisplayServer.window_set_size(Vector2i(320, 180) * scalefac)
	get_window().move_to_center()
	
	
