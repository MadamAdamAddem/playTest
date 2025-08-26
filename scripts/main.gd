extends Node2D
@onready var settings_menu: Node2D = $SettingsMenu
@onready var title_screen: Node2D = $TitleScreen

var game1 = preload("res://scenes/game_1.tscn")

func _ready() -> void:
	settings_menu.closeSignal.connect(closeSettings)
	title_screen.openSettingsSignal.connect(openSettings)
	title_screen.startGameSignal.connect(startGame)
	
	closeSettings()


	
	
func closeSettings():
	settings_menu.resume()
	
	title_screen.show()
	title_screen.get_tree().paused = false

func startGame():
	add_child(game1.instantiate())
	title_screen.queue_free()
	settings_menu.queue_free()
	pass
	
func openSettings():
	settings_menu.pause()
	
	title_screen.hide()
	title_screen.get_tree().paused = true
