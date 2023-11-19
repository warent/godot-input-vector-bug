extends Node3D

var cached_value = Vector2.ZERO

func _process(_delta):
    var stick_vector = Input.get_vector("stick_left", "stick_right", "stick_up", "stick_down")
    if stick_vector == cached_value:
        return
    cached_value = stick_vector
    print("STICK DIRECTION RECEIVED ", stick_vector)