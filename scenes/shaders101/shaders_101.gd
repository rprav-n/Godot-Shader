extends Node2D

@onready var sprite_2d: Sprite2D = $Sprite2D

#
#func _process(delta: float) -> void:
	#var TIME = Time.get_ticks_msec() / 1000.0
	#var a = (sin(TIME) + 1.0) * 0.5;
	##print("Time: " + str(TIME))
	#print("a: ", a)

func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("left_click"):
		(sprite_2d.material as ShaderMaterial).set_shader_parameter("speed", (sprite_2d.material as ShaderMaterial).get_shader_parameter("speed") + 1.0)
