if (global.apariencia == 0)
    sprite_selected = 2407
else if (global.apariencia == 1)
    sprite_selected = 2408
else if (global.apariencia == 2)
    sprite_selected = 2409
else if (global.apariencia == 3)
    sprite_selected = 2410
else if (global.apariencia == 4)
    sprite_selected = 2411
image_selected = 0
image_speed = 0
image_index = 0
type = 0
posicion = 0
anim = 1
can_anim = 0
scale_up = 0.6
scale_down = 1
pos_left = 0
left = 0
right = 0
ready = 0
if ((obj_panel_expand.value == 1) || (obj_panel_expand.value == 2))
    image_index = 0
else if (obj_panel_expand.value == 3)
    image_index = 1
else if ((obj_panel_expand.value == 4) || ((obj_panel_expand.value == 5) || ((obj_panel_expand.value == 6) || (obj_panel_expand.value == 7))))
    image_index = 2
else
    image_index = 3

