if (global.apariencia == 0)
{
    if (global.modo_noche == 1)
        sprite_index = spr_SMB_ground3_solid_night
    else
        sprite_index = spr_SMB_ground3_solid
}
else if (global.apariencia == 1)
{
    if (global.modo_noche == 1)
        sprite_index = spr_SMB3_ground3_solid_night
    else
        sprite_index = spr_SMB3_ground3_solid
}
else if (global.apariencia == 3)
{
    if (global.modo_noche == 1)
        sprite_index = spr_NSMBU_goal_ground_night
    else
        sprite_index = spr_NSMBU_goal_ground
}
else if (global.apariencia == 4)
{
    if (global.modo_noche == 1)
        sprite_index = spr_SMB2_goal_ground_night
    else
        sprite_index = spr_SMB2_goal_ground
}
image_speed = 0
image_index = 0
arrow_image = 0
can_up = 0
anim = 0
crecer_v = 0
crecer_h = 0
size_x = 2
size_y = 2
size_limit_y = 13
poder_girar = 0
draw_p = 0
alarm[1] = 1

