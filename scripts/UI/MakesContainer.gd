extends GridContainer

signal pressed
var button
const makes = [
  "adi",
  "akura",
  "alfa",
  "aston",
  "bentle",
  "bmv",
  "bugati",
  "cadilac",
  "chonda",
  "citron",
  "dodg",
  "ferari",
  "fort",
  "henesey",
  "hevrolet",
  "holdem",
  "hrysler",
  "jagur",
  "konigseg",
  "lambo",
  "lotuz",
  "luxus",
  "maklaren",
  "masda",
  "maybah",
  "mazerati",
  "merc",
  "mitsushi",
  "nisan",
  "opl",
  "other",
  "pahani",
  "pontiak",
  "porshe",
  "rols-roys",
  "rufe",
  "sab",
  "salen",
  "shelbi",
  "tezla",
  "tojota",
  "twr",
  "vendeta",
  "vw",
  "zenwo",
  "zubaru"
]

# Called when the node enters the scene tree for the first time.
func _ready():
	var make
	for make in makes:
		button = Button.new()
		button.text = make
		add_child(button)
		button.connect('pressed', self, '_on_pressed')
	
		
		
	emit_signal('pressed', make)
	pass # Replace with function body.

func _on_pressed():
	print(button.text)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
