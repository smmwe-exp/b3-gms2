hardness = 0
stomp = 1
edible = 0
direct = 1
wings = 0
w_wings = 0
obj_generador = 0
apilar = 0
obj_apilar = ""
obj_apilar_wings = 0
apilado = 0
my_apilar = 0
big = 0
dead_h = 0
innave = 0
swimming = 0
modo_lava = 0
turn = 0
image_speed = 0.1
alarm[10] = 2
if place_meeting(x, (y + 1), obj_solid)
    y++
if (place_meeting((x - 1), y, obj_solid) == 0)
    direction = 180

