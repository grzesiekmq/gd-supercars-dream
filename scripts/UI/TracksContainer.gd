extends GridContainer

var button
const tracks = [  
    "Barcelona",  
     "Bathurst",
     "Brands-Hatch",
  # 'Circuit de la Sarthe',                          
     "Hungaroring",       
     "Indianapolis",      
     "Interlagos",    
     "Isle-of-Man",       
     "Kyalami",     
     "Laguna-Seca",      
     "Le-Mans",       
     "Magny-Cours",       
     "Monaco",       
     "Montreal",       
     "Monza",       
     "Nurburgring",      
     "Red-Bull-Ring",      
     "Silverstone",       
     "Spa-Francorchamps",       
     "Suzuka",       
     "Zandvoort",   
]

# Called when the node enters the scene tree for the first time.
func _ready():
	for track in tracks:
		button = Button.new()
		button.text = track
		
		#button.icon = 
		add_child(button)
	pass # Replace with function body.

func _pressed():
	get_tree().change_scene('res://scenes/Makes.tscn')
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
