var check;
if ((instance_exists(obj_mario) && (global.yoshi > 0)) || (instance_exists(obj_mario) && ((obj_mario.invincible == 1) && (!instance_exists(obj_invincibility)))))
{
    if (collision_rectangle(bbox_left, (bbox_top - 5), bbox_right, (bbox_top + 4), obj_mario, 0, 0) && ((obj_mario.bbox_bottom < (yprevious + 5)) && (obj_mario.state < 2)))
    {
        check = collision_rectangle(obj_mario.bbox_left, (obj_mario.bbox_bottom - 1), obj_mario.bbox_right, obj_mario.bbox_bottom, obj_solidtop, 0, 1)
        if (check || collision_rectangle(obj_mario.bbox_left, (obj_mario.bbox_bottom - 1), obj_mario.bbox_right, (obj_mario.bbox_bottom + 1), obj_quicksand, 0, 0))
            exit
        obj_mario.y = ceil((bbox_top - 31))
        obj_mario.x += (x - xprevious)
        if collision_rectangle(obj_mario.bbox_right, (obj_mario.bbox_top + 4), (obj_mario.bbox_right + 1), (obj_mario.bbox_bottom - 1), obj_solid, 0, 0)
        {
            with (obj_mario)
                x--
        }
        else if collision_rectangle((obj_mario.bbox_left - 1), (obj_mario.bbox_top + 4), obj_mario.bbox_left, (obj_mario.bbox_bottom - 1), obj_solid, 0, 0)
        {
            with (obj_mario)
                x++
        }
    }
}

