extends Node

var astargrid = AStarGrid2D.new()

func grid_init():
	astargrid.region = Rect2i(2, 2, 12, 9)
	astargrid.cell_size = Vector2i(30, 30)
	astargrid.update()
	
func show_path():
	var path_taken = astargrid.get_id_path(Vector2i(2, 2), (Vector2i(14, 11)))


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
