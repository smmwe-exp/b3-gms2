if (global.apariencia == 0)
    sprite_index = spr_SMB_oneway
else if (global.apariencia == 1)
    sprite_index = spr_SMB3_oneway
else if (global.apariencia == 4)
{
    if ((global.bg_level == "castle") || ((global.bg_level == "underground") || ((global.bg_level == "ghost") || (global.modo_noche == 1))))
        sprite_index = spr_SMB2_oneway_night
    else
        sprite_index = spr_SMB2_oneway
}
image_speed = 0.1
rotacion = 0
mytop = instance_create((x - 16), (y - 16), obj_solidtop)
mytop.image_xscale = 2
rot = 0
up = 0
rot_angle = 0

