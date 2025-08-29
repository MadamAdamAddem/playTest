extends Node2D
@onready var player: CharacterBody2D = $"../Player"
@onready var left_room: Area2D = $LeftRoom
@onready var right_room: Area2D = $RightRoom
@onready var bottom_room: Area2D = $BottomRoom
@onready var center_room: Area2D = $CenterRoom
@onready var camera: Camera2D = $"../Camera"


func _on_left_room_body_entered(body: Node2D) -> void:
	if body == player:
		camera.position = left_room.position

func _on_right_room_body_entered(body: Node2D) -> void:
	if body == player:
		camera.position = right_room.position

func _on_bottom_room_body_entered(body: Node2D) -> void:
	if body == player:
		camera.position = bottom_room.position

func _on_center_room_body_entered(body: Node2D) -> void:
	if body == player:
		camera.position = center_room.position
