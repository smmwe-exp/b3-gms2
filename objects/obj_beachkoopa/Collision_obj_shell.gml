if ((jumping == 1) && ((gravity == 0) && ((ready == 2) && ((other.hspeed == 0) && (other.held == 0)))))
{
    if (((object_index == obj_beachkoopa) && (other.sprite_index == spr_shell)) || ((object_index == obj_beachkoopa) && (other.sprite_index == spr_shell_down)))
    {
        if (other.sprite_index == spr_shell_down)
            sprite_index = spr_shell_down_inside
        else if (other.sprite_index == spr_shell)
            sprite_index = spr_shell_inside
        image_speed = 0.125
        with (other.id)
        {
            with (instance_create(x, y, obj_koopa))
                key = other.key
            instance_destroy()
        }
        instance_destroy()
    }
    else if (((object_index == obj_beachkoopa_red) && (other.sprite_index == spr_shell_red)) || ((object_index == obj_beachkoopa_red) && (other.sprite_index == spr_shell_red_down)))
    {
        with (other.id)
        {
            with (instance_create(x, y, obj_koopa_red))
                key = other.key
            instance_destroy()
        }
        instance_destroy()
    }
}

