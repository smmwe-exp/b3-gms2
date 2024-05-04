if ((obj_levelmanager.editor == 0) && (other.held == 0))
{
    if (other.sprite_index == spr_shell_down_inside)
        imagen = spr_shell_down
    else if (other.sprite_index == spr_shell_inside)
        imagen = spr_shell
    else if (other.sprite_index == spr_shell_red_inside)
        imagen = spr_shell_red
    else if (other.sprite_index == spr_shell_red_down_inside)
        imagen = spr_shell_red_down
    else if (other.sprite_index == spr_buzzy_shake)
        imagen = spr_shell_buzzy
    else if (other.sprite_index == spr_buzzy_shake_down)
        imagen = spr_shell_buzzy_down
    else if (other.sprite_index == spr_spiny_shake)
        imagen = spr_spiny_dead
    else if (other.sprite_index == spr_SMB3_buzzy_shake)
        imagen = spr_SMB3_shell_buzzy
    else if (other.sprite_index == spr_SMB3_buzzy_shake_down)
        imagen = spr_SMB3_shell_buzzy_down
    else if (other.sprite_index == spr_SMB3_buzzy_shake_night)
        imagen = spr_SMB3_shell_buzzy_night
    else if (other.sprite_index == spr_SMB3_buzzy_shake_down_night)
        imagen = spr_SMB3_shell_buzzy_down_night
    else if (other.sprite_index == spr_SMB3_spiny_shake)
        imagen = spr_SMB3_spiny_dead
    else
        imagen = other.sprite_index
    if (place_meeting(x, y, obj_shell) && (x == other.x))
    {
        with (instance_create((other.x + 16), other.y, obj_shell_held))
        {
            sprite_index = other.imagen
            koopainside = 0
            prevhspeed = 3.8
            hspeed = 3.8
        }
        with (other.id)
            instance_destroy()
        event_user(1)
    }
    else if (collision_rectangle(bbox_left, bbox_top, (bbox_right - 4), bbox_top, obj_shell, 0, 0) && ((other.bbox_left + (bbox_right / 2)) < (bbox_left + (bbox_right / 2))))
    {
        with (instance_create(other.x, other.y, obj_shell_held))
        {
            sprite_index = other.imagen
            koopainside = 0
            prevhspeed = -3.8
            vspeed = -2.9
            hspeed = -3.8
        }
        with (other.id)
            instance_destroy()
        event_user(1)
    }
    else if (collision_rectangle((bbox_left - 4), bbox_top, bbox_right, bbox_top, obj_shell, 0, 0) && ((other.bbox_left + (bbox_right / 2)) > (bbox_left + (bbox_right / 2))))
    {
        with (instance_create(other.x, other.y, obj_shell_held))
        {
            sprite_index = other.imagen
            koopainside = 0
            prevhspeed = 3.8
            vspeed = -2.9
            hspeed = 3.8
        }
        with (other.id)
            instance_destroy()
        event_user(1)
    }
}

