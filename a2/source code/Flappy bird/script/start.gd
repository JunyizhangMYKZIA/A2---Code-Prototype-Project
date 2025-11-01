extends Node2D

func _ready():
	$Button.pressed.connect(self._on_ButtonDown)
func _process(delta):
	# 检测空格键是否被按下
	if Input.is_action_just_pressed("ui_accept"):
		_on_ButtonDown()
func _on_ButtonDown():
	get_tree().change_scene_to_file("res://play.tscn")
