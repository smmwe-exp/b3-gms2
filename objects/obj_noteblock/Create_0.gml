if (global.apariencia == 0)
{
    sprite_index = spr_SMB_noteblock
    image_speed = 0
    if ((global.bg_level == "snow") && (global.modo_noche == 1))
        image_index = 4
    else if (global.bg_level == "snow")
        image_index = 3
    else if (global.bg_level == "castle")
        image_index = 2
    else if ((global.bg_level == "underground") || ((global.bg_level == "ghost") || (global.modo_noche == 1)))
        image_index = 1
    else
        image_index = 0
}
else if (global.apariencia == 1)
{
    image_speed = 0.15
    if ((global.bg_level == "snow") && (global.modo_noche == 1))
        sprite_index = spr_SMB3_noteblock_ice
    else if (global.bg_level == "castle")
        sprite_index = spr_SMB3_noteblock_dark
    else if ((global.bg_level == "underground") || ((global.bg_level == "ghost") || (global.modo_noche == 1)))
        sprite_index = spr_SMB3_noteblock_night
    else
        sprite_index = spr_SMB3_noteblock
}
else if (global.apariencia == 2)
    image_speed = 0.15
else if (global.apariencia == 4)
{
    image_speed = 0.15
    if ((global.bg_level == "castle") || ((global.bg_level == "underground") || ((global.bg_level == "ghost") || (global.modo_noche == 1))))
        sprite_index = spr_SMB2_noteblock_night
    else
        sprite_index = spr_SMB2_noteblock
}
up = 0
down = 0
sprout = -1
sonido = 0
ready = 0
mysolid = instance_create(x, y, obj_solid)
wings = 0
wings_anim = 0
if (global.apariencia == 0)
    sprite_wings = 370
else if (global.apariencia == 1)
    sprite_wings = 1064
else
    sprite_wings = 1928
alarm[10] = 4

