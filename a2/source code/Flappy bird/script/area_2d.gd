extends Area2D
var left:float
var right:float
var top:float
var bottom:float
var bird_rect
var g = 1
var pos = []
var color = Color.AQUAMARINE
var bird_die = 0
func _ready():
	position = get_viewport_rect().size/2
	position.x = 40
	bird_rect = $Sprite2D.get_rect().size
	$Timer.wait_time = 0.1
	$Timer.start()
	$Timer.timeout.connect(self.bird_move)
	 

	
func bird_move():
	#记录坐标位置
	pos.append(position)
	#鸟的边框属性
	left = position.x - bird_rect.x/2
	right = position.x + bird_rect.x/2
	top = position.y - bird_rect.y/2 
	bottom = position.y + bird_rect.y/2
	position.y += g
	g += 3

	if pos.size() > 6:
		pos = pos.slice(1,)
	if bird_die == 0:
		if Input.is_action_pressed("ui_space"):
			g = -9

		if g > 0:
			$Sprite2D.texture = preload("res://images/机械鸟1.png")
			color = Color.AQUAMARINE
		else:
			$Sprite2D.texture = preload("res://images/机械鸟2.png")
			color = Color.BLUE_VIOLET  

	queue_redraw()
func _draw():
	#绘制顶 top
	draw_line(Vector2(-40, -30), Vector2(40, -30), Color.RED, 5)
	#绘制底 bottom
	draw_line(Vector2(-40, 30), Vector2(40, 30), Color.BLUE, 5)
	#绘制左 left
	draw_line(Vector2(-40, -30), Vector2(-40, 30), Color.ORANGE, 5)
	#绘制右 right
	draw_line(Vector2(40, -30), Vector2(40, 30), Color.CYAN, 5)
	for p in pos:
		#如何从相对坐标变成绝对坐标 让相对坐标-鸟坐标
		draw_texture($Sprite2D.texture,p-position-bird_rect/2,Color.AQUAMARINE)

		


func _on_area_entered(area):
	$Sprite2D.texture = preload("res://images/机械鸟3.png") # Replace with function body.
	bird_die = 1
