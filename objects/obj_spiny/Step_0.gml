if (inup == 0)
{
    if (wings == 1)
    {
        wings_anim += 0.12
        if (y > (ystart + 10))
        {
            if (vspeed < -0.4)
                vspeed = -0.4
            else
                vspeed -= 0.085
        }
        else if (y < (ystart - 10))
        {
            if (vspeed > 0.4)
                vspeed = 0.4
            else
                vspeed += 0.085
        }
    }
    else
        event_inherited()
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
            if (other.sprite_index == spr_spiny)
                sprite_index = spr_spiny_dead
            else if (other.sprite_index == spr_SMB3_spiny)
                sprite_index = spr_SMB3_spiny_dead
            else if (other.sprite_index == spr_SMB_spiny)
                sprite_index = spr_SMB_spiny_dead
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
            if (other.sprite_index == spr_spiny)
                sprite_index = spr_spiny_dead
            else if (other.sprite_index == spr_SMB3_spiny)
                sprite_index = spr_SMB3_spiny_dead
            else if (other.sprite_index == spr_SMB_spiny)
                sprite_index = spr_SMB_spiny_dead
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
            if (other.sprite_index == spr_spiny)
                sprite_index = spr_spiny_dead
            else if (other.sprite_index == spr_SMB3_spiny)
                sprite_index = spr_SMB3_spiny_dead
            else if (other.sprite_index == spr_SMB_spiny)
                sprite_index = spr_SMB_spiny_dead
        }
        else
            sprite_index = other.sprite_index
        direct = other.direct
    }
    instance_destroy()
}

