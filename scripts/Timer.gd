extends Node

var timer
# Called when the node enters the scene tree for the first time.
func _init():
	timer = Timer.new()
	add_child(timer)
	
	
	
	pass 

func _ready():
	
	pass
	
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	print(timer.get_time_left())
	
	pass
