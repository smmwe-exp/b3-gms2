var pinchos_col;
if (!instance_exists(obj_invincibility))
{
    if (((global.yoshi > 0) && ((other.y < (y - 28)) && (other.y > (y - 32)))) || (((other.invincible == 1) && ((other.y < (y - 29)) && (other.y > (y - 32)))) || (place_meeting(x, y, obj_solidtop) && ((other.y < (y - 29)) && (other.y > (y - 32))))))
        exit
    else
    {
        with (other.id)
        {
            pinchos_col = collision_rectangle(bbox_left, (bbox_top - 2), bbox_right, bbox_top, obj_pinchos, 1, 0)
            if (pinchos_col && instance_exists(obj_helmet))
                exit
            else
                event_user(0)
        }
    }
}

