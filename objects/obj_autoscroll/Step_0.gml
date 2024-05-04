var pow, pswitch, pow2, pswitch2;
if instance_exists(obj_mario)
{
    if (follow_y == 1)
    {
        y = obj_mario.y
        follow_y = 0
    }
    if (instance_exists(obj_levelmanager) && (obj_levelmanager.barrier == 0))
    {
        pow = collision_rectangle((obj_mario.x + 5), (obj_mario.bbox_top + 2), (obj_mario.x + 5), (obj_mario.y + 30), obj_block_pow_hold, 1, 0)
        pswitch = collision_rectangle((obj_mario.x + 5), (obj_mario.bbox_top + 2), (obj_mario.x + 5), (obj_mario.y + 30), obj_pswitch, 1, 0)
        pow2 = collision_rectangle((obj_mario.x - 5), (obj_mario.bbox_top + 2), (obj_mario.x - 5), (obj_mario.y + 30), obj_block_pow_hold, 1, 0)
        pswitch2 = collision_rectangle((obj_mario.x - 5), (obj_mario.bbox_top + 2), (obj_mario.x - 5), (obj_mario.y + 30), obj_pswitch, 1, 0)
        if ((obj_mario.x < (__view_get( e__VW.XView, 0 ) + 6)) && (collision_rectangle((obj_mario.x + 5), (obj_mario.bbox_top + 2), (obj_mario.x + 5), (obj_mario.y + 30), obj_solid, 1, 0) || (collision_rectangle((obj_mario.x + 5), (obj_mario.bbox_top + 2), (obj_mario.x + 5), (obj_mario.y + 30), obj_pinchos, 1, 0) || (collision_rectangle((obj_mario.x + 5), (obj_mario.bbox_top + 2), (obj_mario.x + 5), (obj_mario.y + 30), obj_cannon, 1, 0) || (collision_rectangle((obj_mario.x + 5), (obj_mario.bbox_top + 2), (obj_mario.x + 5), (obj_mario.y + 30), obj_bullebill_base, 1, 0) || ((pow && (pow.held == 0)) || (pswitch && (pswitch.held == 0))))))))
        {
            instance_create((__view_get( e__VW.XView, 0 ) + 8), obj_mario.y, obj_deadmario)
            with (obj_mario)
                instance_destroy()
        }
        else if ((obj_mario.x > ((__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )) - 6)) && (collision_rectangle((obj_mario.x - 5), (obj_mario.bbox_top + 2), (obj_mario.x - 5), (obj_mario.y + 30), obj_solid, 1, 0) || (collision_rectangle((obj_mario.x - 5), (obj_mario.bbox_top + 2), (obj_mario.x - 5), (obj_mario.y + 30), obj_pinchos, 1, 0) || (collision_rectangle((obj_mario.x - 5), (obj_mario.bbox_top + 2), (obj_mario.x - 5), (obj_mario.y + 30), obj_cannon, 1, 0) || (collision_rectangle((obj_mario.x - 5), (obj_mario.bbox_top + 2), (obj_mario.x - 5), (obj_mario.y + 30), obj_bullebill_base, 1, 0) || ((pow2 && (pow2.held == 0)) || (pswitch2 && (pswitch2.held == 0))))))))
        {
            instance_create(((__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )) - 8), obj_mario.y, obj_deadmario)
            with (obj_mario)
                instance_destroy()
        }
    }
}
else if instance_exists(obj_deadmario)
    speed = 0

