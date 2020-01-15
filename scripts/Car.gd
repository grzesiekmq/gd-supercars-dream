extends RigidBody

# Declare member variables here.


const e_force = 1000
const b_force = 500
const top_speed = 200
const contact_point = Vector3(0, 0, 0)
var speed 
var distance
var elapsed_time
const finishDistance = 500

func accelerate():
	add_force(Vector3(1 * e_force, 0, 0), contact_point)

# Called when the node enters the scene tree for the first time.

func _ready():
	pass 

# Called every frame.
func _physics_process(delta):
	speed = round(get_linear_velocity().z * 3.6) # kmh
	distance = round(translation.z)
	print('speed ', speed)
	
	if(Input.is_action_pressed("ui_down")):
		add_force(Vector3(-1 * b_force, 0, 0), contact_point)
	
	yield(get_tree().create_timer(3), "timeout")
	if(speed <= top_speed):
		
		accelerate()
		print('distance m ', distance)
		
	if(distance == finishDistance):
		print('finish')	
	
	pass		
	
	#print('start')	
	



	
		
	
	pass # Replace with function body.
