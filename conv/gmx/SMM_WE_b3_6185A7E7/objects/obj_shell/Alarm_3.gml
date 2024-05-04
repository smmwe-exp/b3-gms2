if (sprite_index == spr_shell_buzzy)
{
    sprite_index = spr_buzzy_shake
    image_speed = 0.2
}
else if (sprite_index == spr_shell_buzzy_down)
{
    sprite_index = spr_buzzy_shake_down
    image_speed = 0.2
}
else if (sprite_index == spr_spiny_dead)
{
    sprite_index = spr_spiny_shake
    image_speed = 0.2
}
else if (sprite_index == spr_SMB3_shell_buzzy)
{
    sprite_index = spr_SMB3_buzzy_shake
    image_speed = 0.2
}
else if (sprite_index == spr_SMB3_shell_buzzy_night)
{
    sprite_index = spr_SMB3_buzzy_shake_night
    image_speed = 0.2
}
else if (sprite_index == spr_SMB3_shell_buzzy_down)
{
    sprite_index = spr_SMB3_buzzy_shake_down
    image_speed = 0.2
}
else if (sprite_index == spr_SMB3_shell_buzzy_down_night)
{
    sprite_index = spr_SMB3_buzzy_shake_down_night
    image_speed = 0.2
}
else if (sprite_index == spr_SMB3_spiny_dead)
{
    sprite_index = spr_SMB3_spiny_shake
    image_speed = 0.2
}
else
{
    alarm[3] = 2
    if (shake == 0)
        shake = -6
    else if (shake == -6)
        shake = 6
    else if (shake == 6)
        shake = -6
}

