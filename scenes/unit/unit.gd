extends Node2D

func _ready():
	Signals.connect("SpinUnits", self, "SpinUnits")

func SpinUnits():
	$AnimationPlayer.play("Spin")

func _on_AnimationPlayer_animation_finished(_anim_name):
	Signals.emit_signal("DoneSpinning", self)
