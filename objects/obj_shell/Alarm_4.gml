shake = 0
alarm[3] = -1
if (koopainside != 0)
{
    switch koopainside
    {
        case -1:
            if ((sprite_index == spr_buzzy_shake) || ((sprite_index == spr_buzzy_shake_down) || ((sprite_index == spr_SMB3_buzzy_shake) || ((sprite_index == spr_SMB3_buzzy_shake_night) || ((sprite_index == spr_SMB3_shell_buzzy_down) || (sprite_index == spr_SMB3_shell_buzzy_down_night))))))
            {
                instance_create((x + 8), y, obj_buzzybeetle)
                instance_destroy()
            }
            else if ((sprite_index == spr_spiny_shake) || (sprite_index == spr_SMB3_spiny_shake))
            {
                instance_create((x + 8), y, obj_spiny)
                instance_destroy()
            }
            break
        case 1:
            with (instance_create(x, y, obj_beachkoopa))
                cankill = 1
            alarm[5] = -1
            if (sprite_index == spr_shell_down_inside)
                sprite_index = spr_shell_down
            else if (sprite_index == spr_shell_inside)
                sprite_index = spr_shell
            koopainside = 0
            break
        case 2:
            with (instance_create(x, y, obj_beachkoopa_red))
                cankill = 1
            alarm[5] = -1
            if (sprite_index == spr_shell_red_inside)
                sprite_index = spr_shell_red
            else if (sprite_index == spr_shell_red_down_inside)
                sprite_index = spr_shell_red_down
            koopainside = 0
            break
    }
    
}
else
{
    if ((sprite_index == spr_shell) || (sprite_index == spr_shell_down))
    {
        instance_create((x + 8), y, obj_koopa)
        instance_destroy()
        exit
    }
    if ((sprite_index == spr_shell_red) || (sprite_index == spr_shell_red_down))
    {
        instance_create((x + 8), y, obj_koopa_red)
        instance_destroy()
        exit
    }
}

