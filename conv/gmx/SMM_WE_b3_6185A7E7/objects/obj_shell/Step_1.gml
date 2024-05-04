var check, check_pinchos, check_solid, check_oneway, check_cannon, check_bullet, check_muncher, check_pinchos2;
if (instance_exists(obj_lava_water) && ((y > (obj_lava_water.y + 16)) && (global.bg_level == "castle")))
{
    if (global.apariencia != 0)
    {
        with (instance_create((x + 8), (y - 12), obj_smoke))
        {
            if (global.apariencia == 1)
                sprite_index = spr_SMB3_splash_lava
            else if (global.apariencia == 2)
                sprite_index = spr_splash_lava
            depth = -10
        }
    }
    with (instance_create((x + 8), y, obj_enemyparent_lava))
    {
        sprite_index = other.sprite_index
        image_speed = 0
        direct = 1
    }
    instance_destroy()
}
if (instance_exists(obj_lava_water) && ((y > (obj_lava_water.y + 16)) && ((global.bg_level == "forest") && (global.modo_noche == 1))))
{
    if (global.apariencia != 0)
    {
        with (instance_create(x, (y - 16), obj_smoke))
        {
            if (global.apariencia == 1)
                sprite_index = spr_SMB3_splash_lava_purple
            else if (global.apariencia == 2)
                sprite_index = spr_splash_lava_purple
            depth = -10
        }
    }
    with (instance_create((x + 8), y, obj_enemyparent_lava))
    {
        sprite_index = other.sprite_index
        image_speed = 0
        direct = 1
    }
    instance_destroy()
}
if ((sprite_index == spr_shell_buzzy) || (sprite_index == spr_shell_buzzy_down))
    hardness = 1
if (instance_exists(obj_mario) && ((global.apariencia == 4) && (object_index != obj_spiny_empty)))
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
    if (collision_rectangle(bbox_left, (bbox_top - 8), bbox_right, (bbox_top + 7), obj_mario, 0, 0) && ((obj_mario.state < 2) && (speed != 0)))
    {
        if ((!check) || ((check.y > y) || (check.y == y)))
        {
            if (vspeed == 0)
                obj_mario.y = ceil((bbox_top - 31))
            else
                obj_mario.y = ceil((bbox_top - (31 - vspeed)))
            if (((hspeed > 0) && (!collision_rectangle((obj_mario.bbox_right + hspeed), obj_mario.bbox_top, (obj_mario.bbox_right + hspeed), (obj_mario.bbox_bottom - 1), obj_onewaygate_left, 0, 0))) || ((hspeed < 0) && (!collision_rectangle((obj_mario.bbox_left + hspeed), obj_mario.bbox_top, (obj_mario.bbox_left + hspeed), (obj_mario.bbox_bottom - 1), obj_onewaygate_right, 0, 0))))
                obj_mario.x += hspeed
        }
    }
}

