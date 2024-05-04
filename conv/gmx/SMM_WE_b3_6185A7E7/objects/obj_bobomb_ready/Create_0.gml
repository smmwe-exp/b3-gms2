event_inherited()
if (global.apariencia == 0)
    sprite_index = spr_SMB_bobomb_ready
else if (global.apariencia == 1)
    sprite_index = spr_SMB3_bobomb_ready
else if (global.apariencia == 4)
    sprite_index = spr_SMB2_bobomb_ready
image_speed = 0.2
alarm[1] = 300
time_blow = 0
s_bobomb = 1854

