extends Node2D
@onready var settings_menu: Node2D = $SettingsMenu
@onready var title_screen: Node2D = $TitleScreen

func _ready() -> void:
	settings_menu.closeSignal.connect(closeSettings)
	title_screen.openSettingsSignal.connect(openSettings)
	
	closeSettings()


	
	
func closeSettings():
	settings_menu.resume()
	
	title_screen.show()
	title_screen.get_tree().paused = false

func startGame():
	pass
	
func openSettings():
	settings_menu.pause()
	
	title_screen.hide()
	title_screen.get_tree().paused = true
