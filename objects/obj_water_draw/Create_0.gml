if (global.apariencia == 0)
    sprite_index = spr_SMB_water
else if (global.apariencia == 1)
    sprite_index = spr_SMB3_water
image_speed = 0.2
x = 0
y = (room_height - 16)
if ((global.apariencia == 0) || (global.apariencia == 1))
    image_xscale = (room_width / 16)
else if (global.apariencia == 2)
    image_xscale = (room_width / 32)
modo_edit_water = 0
watter_limit_position = (room_height - 16)

