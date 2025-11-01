extends Node2D
@export var Bird:PackedScene
@export var Barrier:PackedScene

var bird
var barrier
var score = 0

func _ready():
	$CanvasLayer/Label.text = '得分:'+ str(score)
	bird = Bird.instantiate()
	$CanvasLayer.add_child(bird)
	spawn_barrier()
	
	
func _process(delta):
	if bird.top < 0:
		bird.position.y = 30
	if bird.bottom > 600:
		bird.queue_free()
		
		get_tree().change_scene_to_file("res://script/end.tscn")
	barrier.position.x -= 80 * delta
	if barrier.position.x < -90:
		score += 1   
		barrier.queue_free()
		spawn_barrier()
		
func spawn_barrier():
	$CanvasLayer/Label.text = '得分:'+ str(score)
	barrier = Barrier.instantiate()
	barrier.position.x = get_viewport_rect().size.x
	$CanvasLayer2.add_child(barrier)
	
