var check;
if (inup == 0)
{
    if (wings == 0)
    {
        if ((global.bg_level == "underwater") || (((global.modo_noche == 1) && (global.bg_level == "airship")) || (((global.modo_noche == 1) && (global.bg_level == "sky")) || (instance_exists(obj_lava_water) && ((y >= obj_lava_water.y) && ((global.bg_level == "forest") && (global.modo_noche == 1)))))))
            swimming = 1
        else
            swimming = 0
        event_user(2)
        event_user(3)
        event_user(4)
        if (hspeed > 0)
        {
            if (big == 0)
                direct = 1
            else
                direct = 2
        }
        else if (hspeed < 0)
        {
            if (big == 0)
                direct = -1
            else
                direct = -2
        }
    }
    else
    {
        event_user(8)
        if (ready == 1)
            wings_anim += 0.2
        else
            wings_anim += 0.12
        if ((mytopid != obj_lighting) && (instance_exists(mytopid) && instance_exists(obj_mario)))
        {
            mytopid.x = (x - 8)
            mytopid.y = y
            check = collision_rectangle(obj_mario.bbox_left, (obj_mario.bbox_bottom - 1), obj_mario.bbox_right, (obj_mario.bbox_bottom + 1), obj_solidtop, 0, 0)
            if (check && (check != mytopid))
                exit
            if (collision_rectangle(bbox_left, (bbox_top - 5), bbox_right, (bbox_top + 4), obj_mario, 0, 0) && ((obj_mario.y < (y - 26)) && (obj_mario.state < 2)))
            {
                obj_mario.y = ceil((bbox_top - 32))
                if (((hspeed > 0) && (!collision_rectangle((obj_mario.bbox_right + hspeed), obj_mario.bbox_top, (obj_mario.bbox_right + hspeed), (obj_mario.bbox_bottom - 1), obj_solid, 0, 0))) || ((hspeed < 0) && (!collision_rectangle((obj_mario.bbox_left + hspeed), obj_mario.bbox_top, (obj_mario.bbox_left + hspeed), (obj_mario.bbox_bottom - 1), obj_solid, 0, 0))))
                    obj_mario.x += hspeed
            }
        }
    }
}
else
{
    if (ready == 0)
    {
        if instance_exists(obj_mario)
        {
            if ((obj_mario.x > (x - 32)) && ((obj_mario.x < (x + 32)) && (obj_mario.y > y)))
            {
                hspeed = 0
                ready = 1
            }
        }
        if (((hspeed < 0) && (!position_meeting(bbox_left, (y - 4), obj_solid))) || ((hspeed > 0) && (!position_meeting(bbox_right, (y - 4), obj_solid))))
            hspeed = (-hspeed)
    }
    else
    {
        with (instance_create((x - 8), y, obj_buzzy_ceiling))
        {
            if (other.sprite_index == spr_buzzybeetle)
                sprite_index = spr_shell_buzzy_down
            else if (other.sprite_index == spr_NSMBU_buzzybeetle)
                sprite_index = spr_NSMBU_shell_buzzy_down
            else if (other.sprite_index == spr_SMB3_buzzybeetle)
                sprite_index = spr_SMB3_shell_buzzy_down
            else if (other.sprite_index == spr_SMB3_buzzybeetle_night)
                sprite_index = spr_SMB3_shell_buzzy_down_night
            else if (other.sprite_index == spr_SMB_buzzybeetle)
                sprite_index = spr_SMB_shell_buzzy_down
            else if (other.sprite_index == spr_SMB_buzzybeetle_night)
                sprite_index = spr_SMB_shell_buzzy_down_night
        }
        instance_destroy()
    }
    event_user(2)
    event_user(3)
    if (hspeed > 0)
        direct = 1
    else if (hspeed < 0)
        direct = -1
}
if (instance_exists(obj_lava_water) && (((y + 8) >= obj_lava_water.y) && (global.bg_level == "castle")))
{
    if (global.apariencia != 0)
    {
        with (instance_create(x, (y - 8), obj_smoke))
        {
            if (global.apariencia == 1)
                sprite_index = spr_SMB3_splash_lava
            else if (global.apariencia == 2)
                sprite_index = spr_splash_lava
            depth = -10
        }
    }
    with (instance_create(x, y, obj_enemyparent_lava))
    {
        if (other.inup == 1)
        {
            if (other.sprite_index == spr_buzzybeetle)
                sprite_index = spr_shell_buzzy_down
            else if (other.sprite_index == spr_SMB3_buzzybeetle)
                sprite_index = spr_SMB3_shell_buzzy_down
            else if (other.sprite_index == spr_SMB3_buzzybeetle_night)
                sprite_index = spr_SMB3_shell_buzzy_down_night
            else if (other.sprite_index == spr_SMB_buzzybeetle)
                sprite_index = spr_SMB_shell_buzzy_down
            else if (other.sprite_index == spr_SMB_buzzybeetle_night)
                sprite_index = spr_SMB_shell_buzzy_down_night
        }
        else
            sprite_index = other.sprite_index
        direct = other.direct
    }
    instance_destroy()
}
if (instance_exists(obj_lava_water) && (((y + 8) > obj_lava_water.y) && ((global.bg_level == "forest") && (global.modo_noche == 1))))
{
    with (instance_create(x, (y - 8), obj_smoke))
    {
        if (global.apariencia == 1)
            sprite_index = spr_SMB3_splash_lava_purple
        else if (global.apariencia == 2)
            sprite_index = spr_splash_lava_purple
        depth = -10
    }
    with (instance_create(x, y, obj_enemyparent_lava))
    {
        if (other.inup == 1)
        {
            if (other.sprite_index == spr_buzzybeetle)
                sprite_index = spr_shell_buzzy_down
            else if (other.sprite_index == spr_SMB3_buzzybeetle)
                sprite_index = spr_SMB3_shell_buzzy_down
            else if (other.sprite_index == spr_SMB3_buzzybeetle_night)
                sprite_index = spr_SMB3_shell_buzzy_down_night
            else if (other.sprite_index == spr_SMB_buzzybeetle)
                sprite_index = spr_SMB_shell_buzzy_down
            else if (other.sprite_index == spr_SMB_buzzybeetle_night)
                sprite_index = spr_SMB_shell_buzzy_down_night
        }
        else
            sprite_index = other.sprite_index
        direct = other.direct
    }
    instance_destroy()
}

