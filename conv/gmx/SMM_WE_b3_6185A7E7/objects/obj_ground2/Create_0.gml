if (global.apariencia == 0)
{
    if (global.modo_noche == 1)
        sprite_index = spr_SMB_ground_solid
    else
        sprite_index = spr_SMB_ground_solid
}
else if (global.apariencia == 1)
{
    if (global.modo_noche == 1)
        sprite_index = spr_SMB3_ground_solid_night
    else
        sprite_index = spr_SMB3_ground_solid
}
else if (global.apariencia == 3)
{
    if (global.modo_noche == 1)
        sprite_index = spr_NSMBU_start_ground_night
    else
        sprite_index = spr_NSMBU_start_ground
}
else if (global.apariencia == 4)
{
    if (global.modo_noche == 1)
        sprite_index = spr_SMB2_start_ground_night
    else
        sprite_index = spr_SMB2_start_ground
}
image_speed = 0
image_index = 0
arrow_image = 0
can_up = 0
anim = 0
crecer_v = 0
size_y = 2
size_limit_y = 13
poder_girar = 0
draw_p = 0
if (room == rm_editor)
    instance_create((x - 16), (y - 48), obj_arrow_lock)
alarm[1] = 1

