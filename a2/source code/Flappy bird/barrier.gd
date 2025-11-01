extends Node2D
@onready var top = $top
@onready var bottom = $bottom

func _ready():
	init_pos()
	
	
func init_pos():
	var rand_y = randi_range(200,300)
	top.position = Vector2(0,rand_y-75)
	bottom.position = Vector2(0,rand_y+75)
