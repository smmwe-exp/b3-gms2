var check, check_pinchos, check_solid, check_oneway, check_cannon, check_bullet, check_muncher, check_pinchos2;
if instance_exists(obj_mario)
{
    check = collision_rectangle(obj_mario.bbox_left, (obj_mario.bbox_bottom - 1), obj_mario.bbox_right, (obj_mario.bbox_bottom + 1), obj_solidtop, 0, 0)
    check_pinchos = collision_rectangle(obj_mario.bbox_left, (obj_mario.bbox_bottom - 1), obj_mario.bbox_right, (obj_mario.bbox_bottom + 1), obj_pinchos, 0, 0)
    check_solid = collision_rectangle(obj_mario.bbox_left, (obj_mario.bbox_top - 2), obj_mario.bbox_right, obj_mario.bbox_top, obj_solid, 1, 0)
    check_oneway = collision_rectangle(obj_mario.bbox_left, (obj_mario.bbox_top - 2), obj_mario.bbox_right, obj_mario.bbox_top, obj_onewaygate_bottom, 1, 0)
    check_cannon = collision_rectangle(obj_mario.bbox_left, (obj_mario.bbox_top - 2), obj_mario.bbox_right, obj_mario.bbox_top, obj_cannon, 1, 0)
    check_bullet = collision_rectangle(obj_mario.bbox_left, (obj_mario.bbox_top - 2), obj_mario.bbox_right, obj_mario.bbox_top, obj_bullebill_base, 1, 0)
    check_muncher = collision_rectangle(obj_mario.bbox_left, (obj_mario.bbox_top - 2), obj_mario.bbox_right, obj_mario.bbox_top, obj_muncher, 1, 0)
    check_pinchos2 = collision_rectangle(obj_mario.bbox_left, (obj_mario.bbox_top - 2), obj_mario.bbox_right, obj_mario.bbox_top, obj_pinchos, 1, 0)
    if ((((check && (check != id)) || check_pinchos) && (vspeed >= 0)) || ((((check && (check != id)) || check_pinchos) && ((vspeed < 0) && (y > (obj_mario.y + 32)))) || ((check_solid || (check_oneway || (check_cannon || (check_bullet || (check_muncher || check_pinchos2))))) && (vspeed < 0))))
    {
        obj_mario.inclown = 0
        exit
    }
    if (collision_rectangle(bbox_left, (bbox_top - 8), bbox_right, (bbox_top + 7), obj_mario, 0, 0) && ((obj_mario.state < 2) && ((inmune == 0) && (speed != 0))))
    {
        if ((!check) || ((check.y > y) || (check.y == y)))
        {
            if (vspeed == 0)
                obj_mario.y = ceil((bbox_top - 31))
            else
                obj_mario.y = ceil((bbox_top - (31 - vspeed)))
            if (((hspeed > 0) && (!collision_rectangle((obj_mario.bbox_right + hspeed), obj_mario.bbox_top, (obj_mario.bbox_right + hspeed), (obj_mario.bbox_bottom - 1), obj_onewaygate_left, 0, 0))) || ((hspeed < 0) && (!collision_rectangle((obj_mario.bbox_left + hspeed), obj_mario.bbox_top, (obj_mario.bbox_left + hspeed), (obj_mario.bbox_bottom - 1), obj_onewaygate_right, 0, 0))))
                obj_mario.x -= hspeed
        }
    }
}

