extends Node2D

func _process(delta):
	var TIME = Time.get_ticks_msec() / 1000.0
	var a = sin(delta)
	
	print("TIME: " + str(TIME))
