if (global.apariencia == 0)
    sprite_index = spr_SMB_door_switch
else if (global.apariencia == 1)
    sprite_index = spr_SMB3_door_switch
else if (global.apariencia == 2)
    sprite_index = spr_door_switch
else if (global.apariencia == 4)
{
    if ((global.bg_level == "castle") || ((global.bg_level == "underground") || ((global.bg_level == "ghost") || (global.modo_noche == 1))))
        sprite_index = spr_SMB2_door_switch_night
    else
        sprite_index = spr_SMB2_door_switch
}
if ((door_exit != obj_lighting) && instance_exists(door_exit))
{
    door_x = door_exit.x
    door_y = door_exit.y
}

