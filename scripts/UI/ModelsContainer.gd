extends GridContainer

var button
var cars = [{"name": "adi", "models": ["a8","avus","r18","r8 fsi","r8 le mans","rs7","rsq","tt clubsport"]},
	{ "name": "akura", "models": ["nzx", "xrx", "NZX GT3"] },
	{ "name": "alfa", "models": ["8c spider", "zagato tz3 stradale"] },
{
    "name": "aston",
    "models": [
      "DBR9",
      "dbs volante",
      "one 77",
      "rapide",
      "v12 vanquish",
      "vanquish",
      "vantage",
      "vulcan"
    ]
},

  	{ "name": "bentle", "models": ["continental gt supersports"] },

  {
    "name": "bmv",
    "models": ["7", "8 series concept", "i8", "m3 GTR", "m3", "m6"]
  },

  { "name": "bugati", "models": ["chiron", "veyron", "centodieci"] },

  { "name": "cadilac", "models": ["cien", "cts"] },

  { "name": "chonda", "models": ["NZX TAKATA DOME", "s2000 tuned"] },

  { "name": "citron", "models": ["citron gt"] },

  {
    "name": "dodg",
    "models": ["viper gts", "viper zrt", "viper", "challenger", "charger"]
  },

  {
    "name": "ferari",
    "models": [
      "430",
      "458 italia",
      "599",
      "812 superfast",
      "f12",
      "la ferari",
      "modena",
      "testarosa"
    ]
  },

  { "name": "fort", "models": ["gt 90", "fort gt", "mustang salen", "mustang"] },

  { "name": "henesey", "models": ["venom gt"] },

  {
    "name": "hevrolet",
    "models": ["camaro old", "camaro", "corvete concept", "corvete c7"]
  },

  { "name": "holdem", "models": ["monaro"] },

  { "name": "hrysler", "models": ["300c", "crossfire", "ME"] },

  { "name": "jagur", "models": ["c-x75", "f type", "xkr"] },

  { "name": "konigseg", "models": ["agera", "ccx", "one1"] },

  {
    "name": "lambo",
    "models": [
      "asterion",
      "aventador",
      "diablo sv",
      "gallardo",
      "huracan",
      "murcielago",
      "reventon",
      "urus",
      "veneno"
    ]
  },

  { "name": "lotuz", "models": ["evora", "exige s"] },

  { "name": "luxus", "models": ["gs", "lfa"] },

  { "name": "maklaren", "models": ["576 gt", "f1", "maklaren gt", "mp4", "p1"] },

  { "name": "masda", "models": ["mx5", "mx5 2016", "rx7", "rx8"] },

  { "name": "maybah", "models": ["exelero"] },

  { "name": "mazerati", "models": ["G Turismo", "mc12", "quatroporte", "spyder"] },
  {
    "name": "merc",
    "models": [
      "amge gts",
      "cl",
      "clk dtm",
      "clk gtr",
      "slr maklaren",
      "sls amge",
      "sls"
    ]
  },

  { "name": "mitsushi", "models": ["3000gt", "eclipse", "lancer evolution x", "lancer wrc"] },

  { "name": "nisan", "models": ["370z", "gtr nizmo", "R35 GTR", "skyline gtr"] },

  { "name": "opl", "models": ["speedster"] },

  {
    "name": "other",
    "models": [
      "asterisk",
      "concept car 2009",
      "concept car 7",
      "concept car 5",
      "exotic car",
      "race car",
      "vm x1",
      "wizard gt"
    ]
  },

  { "name": "pahani", "models": ["huayra", "zonda r"] },

  { "name": "pontiak", "models": ["gto"] },

  {
    "name": "porshe",
    "models": [
      "911 turbo",
      "918 r type",
      "996",
      "997 gt3",
      "boxster s",
      "boxster",
      "carrera gt",
      "cayman",
      "panamera turbo"
    ]
  },

  { "name": "rols-roys", "models": ["phantom"] },

  { "name": "rufe", "models": ["rt 12s"] },

  { "name": "sab", "models": ["aero x"] },

  { "name": "salen", "models": ["s7"] },

  { "name": "shelbi", "models": ["cobra"] },

  { "name": "tezla", "models": ["model s"] },

  { "name": "tojota", "models": ["soarer"] },

  { "name": "twr", "models": ["sagaris"] },

  { "name": "vendeta", "models": ["gtr 800"] },

  { "name": "vw", "models": ["ego"] },

  { "name": "zenwo", "models": ["st1"] },

  { "name": "zubaru", "models": ["b11s", "impreza"] }
]

var models



	

func _on_pressed(make):
	
	pass
	
func conditional(obj):
	if(obj.name == 'holdem'):
		models = obj.models
		
# Called when the node enters the scene tree for the first time.
func _ready():
	var criteria = funcref(self, "conditional")

	filter(cars, criteria)
	
	for model in models:
		button = Button.new()
		button.text = model
		add_child(button)
	
	pass # Replace with function body.
	
	
func filter(list, matches_criteria):
	# Usually better to add filtered elements to new array
	# because removing elements while iterating over a list
	# causes weird behaviour
	var filtered = []
	for element in list:
		if matches_criteria.call_func(element):
			filtered.append(element)
	return filtered

		
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
