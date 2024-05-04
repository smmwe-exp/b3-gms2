if (global.apariencia == 0)
    sprite_index = spr_SMB_water
else if (global.apariencia == 1)
    sprite_index = spr_SMB3_water
else if (global.apariencia == 2)
    sprite_index = spr_water
if (obj_levelmanager.editor == 1)
{
    if ((global.apariencia == 0) || (global.apariencia == 1))
        image_xscale = (room_width / 16)
    else if (global.apariencia == 2)
        image_xscale = (room_width / 32)
}
if (obj_levelmanager.editor == 1)
{
    image_speed = 0
    image_index = 0
}
else
    image_speed = 0.2

