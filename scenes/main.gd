extends Node2D

func _ready():
	Signals.connect("DoneSpinning", self, "DoneSpinning")

func DoneSpinning(unit):
	print(str(unit))
		
func _on_Button_pressed():
	Signals.emit_signal("SpinUnits")
