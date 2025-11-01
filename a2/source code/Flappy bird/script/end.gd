extends Node2D


func _ready():

	$RestartButton.pressed.connect(self._on_RestartButton_pressed)

func _on_RestartButton_pressed():
	get_tree().change_scene_to_file("res://play.tscn")
