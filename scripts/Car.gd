extends RigidBody

# Declare member variables here.
signal speed_changed
signal distance_changed
signal finish_reached

const e_force = 1000
const b_force = 500
const top_speed = 200
const contact_point = Vector3(0, 0, 0)
var speed
var str_speed
var distance
var str_distance
var elapsed_time
const finishDistance = 500
onready var hud_node = get_node('../../HUD')

func accelerate():
	add_force(Vector3(1 * e_force, 0, 0), contact_point)

# Called when the node enters the scene tree for the first time.

func _ready():
	connect('speed_changed', hud_node, '_on_speed_changed')
	pass 

# Called every frame.
func _physics_process(delta):
	# TODO: elapsed time 00:00
	
	speed = round(get_linear_velocity().x * 3.6) # kmh
	distance = translation.z / 100
	
	
	str_distance = "distance {dist} km".format({"dist": "%.1f" % distance})
	str_speed = "speed {speed_value} kmh".format({"speed_value": speed})
	
	emit_signal('speed_changed', str_speed)
	emit_signal('distance_changed', str_distance)
	
	
	if(Input.is_action_pressed("ui_down")):
		add_force(Vector3(-1 * b_force, 0, 0), contact_point)
	
	yield(get_tree().create_timer(3), "timeout")
	
	#if(speed <= top_speed):
		
	accelerate()
	if(speed == 100):
		
		print('100 speed', elapsed_time)
		
	if(distance == finishDistance):
		emit_signal('finish_reached', 'finish')
		speed -= 50
		
	
	pass		
	
	#print('start')	
	



	
		
	
	pass # Replace with function body.


func _on_timeout():
	pass # Replace with function body.
