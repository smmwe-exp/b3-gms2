var shell;
event_inherited()
if (ready == 0)
{
    hspeed = (max(0, (abs(hspeed) - 0.05)) * sign(hspeed))
    if ((hspeed < 0.05) && (hspeed > -0.05))
    {
        hspeed = 0
        image_speed = 0.125
        ready = 1
        alarm[10] = 90
    }
}
else if (ready > 0)
{
    if (((sprite_index == spr_beachkoopa_walk) && ((ready == 1) && (!collision_rectangle(bbox_left, bbox_top, bbox_right, (bbox_bottom - 4), obj_shell, 0, 0)))) || ((sprite_index == spr_beachkoopa_walk_red) && ((ready == 1) && (!collision_rectangle(bbox_left, bbox_top, bbox_right, (bbox_bottom - 4), obj_shell, 0, 0)))))
        ready = 2
    else if (ready == 2)
    {
        shell = collision_rectangle((x + (5 * sign(direct))), bbox_top, (x + (10 * sign(direct))), (bbox_bottom - 4), obj_shell, 0, 0)
        if shell
        {
            if ((shell.koopainside == 0) && (jumping == 0))
            {
                if (((object_index == obj_beachkoopa) && (shell.sprite_index == spr_shell)) || (((object_index == obj_beachkoopa) && (shell.sprite_index == spr_shell_down)) || (((object_index == obj_beachkoopa_red) && (shell.sprite_index == spr_shell_red)) || ((object_index == obj_beachkoopa_red) && (shell.sprite_index == spr_shell_red_down)))))
                {
                    vspeed = -2.5
                    y--
                    jumping = 1
                }
            }
            else if (shell.koopainside != 0)
                hspeed = (-hspeed)
        }
        if ((jumping == 1) && ((gravity == 0) && (!collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_shell, 0, 0))))
            jumping = 0
    }
}
if (hspeed > 0)
    direct = 1
else if (hspeed < 0)
    direct = -1

