extends Control

var data = {}
var path = "res://data/carProps.json"

# Called when the node enters the scene tree for the first time.
func _ready():
	var jsonfile = File.new()
	jsonfile.open(path, File.READ)
	data = parse_json(jsonfile.get_as_text())  
	#print(data)

	$NameLabel.text = data.ferari[3].name
	$AccelerationLabel.text += str(data.ferari[3].acceleration) + ' s'
	$TopSpeedLabel.text += str(data.ferari[3].topSpeed) + ' kmh'
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
