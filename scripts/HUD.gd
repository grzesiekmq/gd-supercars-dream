extends Control



func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	pass


func _on_speed_changed(speed):
	#print('s', speed)
	$SpeedLabel.text = speed
	pass # Replace with function body.


func _on_distance_changed(distance):
	$DistanceLabel.text = distance
	pass # Replace with function body.


func _on_finish_reached(finish):
	$DistanceLabel.text = finish
	$SpeedLabel.text = '0'
	pass # Replace with function body.
