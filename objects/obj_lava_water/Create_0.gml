image_speed = 0
image_index = 0
x = __view_get( e__VW.XView, 0 )
direct = 1
image_xscale = 24
if instance_exists(obj_card_bout)
    y = obj_card_bout.pos_y
mytopid = instance_create(__view_get( e__VW.XView, 0 ), y, obj_lava_water_drybones)
mytopid.image_xscale = 24
pos_y = y
pos_y_limit = y
img_sprite = 2798
img_index = global.apariencia
up_down = 0
not_move = 0
bajar = 0
b_bajar = 0

