extends Node

#global variable
var a = 2

const pi = 3.14 #const makes this variable constant and can not be changed
export var radius = 2 #export makes this variable exposed to the godot tooling, can be changed through inspector

export (Texture) var myImage #godot uses Texture to know which type it is

func _ready():
	#_firstPart()
	#_secondPart()
	#_thirdPart()
	#_fourthPart()
	_fifthPart()
	
func _firstPart():
	var zeroToNine = Array()
	for i in range(10):
		zeroToNine.append(i)
		
	#no need to use semi colon operator, but if want to put multiple lines of code on one line
	print(zeroToNine);print("hello")
	
	#local Variable to the scope of _ready, uses duck typing to infer the type, in this case int
	var b = 1
	#implicitly tells godot what the type is
	var c = int(1)
	
	var d = 2.1 #floating point number
	var e = "three" #string
	var f = Vector2(0,1) #vector
	var g = String(d) + e #figuring out on the fly we are appending strings
	print (g)
	
	#var h = d + e #error, invalid operands float and String in + operator
	#print(h)
	
func _secondPart():
	#pi = 4 #will not work because it is const and will not change
	var area = pi * radius
	print(area)
	
func _thirdPart():
	var myArray = [1,"two",3.1,4]
	print(myArray)
	myArray.append("Bob")
	print(myArray)
	for i in myArray:
		print(i)
		
func _fourthPart():
	var monster = {}
	monster["Name"] = "Orc"
	print(monster)
	print(monster.Name)
	
	var monsters = {
		"elf" : {
			"hp": 32,
			"alignment" : "chaotic evil"
		},
		"orc" : {
			"hp": 42,
			"alignment": "chaotic good"
		}
	}
	print(monsters)
	print(monsters.elf.hp)
	
	#monsters.elf.hp = 6
	if monsters.elf.hp < 5:
		print("elf needs food")
	elif monsters.elf.hp < 10:
		print("elf wouldnt mind some food")
	else:
		print("elf might have an eating problem")
		
func _fifthPart():
	var val = GameGlobals.meaningOfLife #this has been autoloaded. See GameGlobals.gd for defined variables
	match val:
		1: print("found 1") #stops if val = 1
		2,3,4,5: print("found 2 through 5") #stops if val 2-5
		6: #evaluates for 6, nut continue on with keyword continue
			print("its 6")
			continue
		_: print("catchall") #otherwise, catchall catches all others, not required