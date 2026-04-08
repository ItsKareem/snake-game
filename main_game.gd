extends Node2D

const SNAKE = 0
const APPLE = 1
var apple_pos
var snake_body = [Vector2(7,12), Vector2(6,12), Vector2(5,12)]

func _ready() -> void:
	apple_pos = place_apple()
	draw_apple()
	draw_snake()

func place_apple():
	randomize()
	var x = randi() % 20 + 2
	var y = randi() % 20 + 2
	return Vector2(x, y)

func draw_apple():
	$Snake.set_cell(0, Vector2i(apple_pos), APPLE, Vector2i(0, 0))

func draw_snake():
	for block in snake_body:
		$Snake.set_cell(0, Vector2i(block.x, block.y), SNAKE, Vector2(3,0))
