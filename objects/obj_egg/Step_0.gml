if ((global.apariencia == 0) || (global.apariencia == 1))
{
    hardness = 0
    stomp = 0
    edible = 1
    if (global.apariencia == 0)
    {
        if (object_index == obj_egg_red)
            sprite_index = spr_SMB_goomba_shoe_red
        else
            sprite_index = spr_SMB_goomba_shoe
    }
    else if (object_index == obj_egg_red)
        sprite_index = spr_SMB3_goomba_shoe_red
    else
        sprite_index = spr_SMB3_goomba_shoe
    event_inherited()
    if ((jumping == 2) && (gravity == 0))
    {
        hspeed = 0
        jumping = 0
        alarm[10] = 60
    }
    if ((vspeed >= 0) && (jumping == 1))
        jumping = 2
    if (hspeed > 0)
        direct = 1
    else if (hspeed < 0)
        direct = -1
    if (paracaidas == 1)
    {
        direct = -1
        if (x > (xstart + 16))
        {
            if (hspeed < -0.5)
                hspeed = -0.5
            else
                hspeed -= 0.015
        }
        else if (x < (xstart - 16))
        {
            if (hspeed > 0.5)
                hspeed = 0.5
            else
                hspeed += 0.015
        }
        if (gravity == 0)
        {
            instance_create(x, y, obj_paracaidas_go)
            paracaidas = 0
            hspeed = 0
            alarm[10] = 10
        }
    }
}
else if (global.apariencia == 2)
{
    hardness = 100
    stomp = -1
    edible = 2
    if (object_index == obj_egg_red)
        sprite_index = spr_egg_red
    else
        sprite_index = spr_egg
    if ((wings == 0) || (paracaidas == 1))
        event_inherited()
    if ((gravity == 0) && ((wings == 0) && (paracaidas == 0)))
    {
        if (ready == 0)
        {
            ready = 1
            alarm[0] = 30
        }
    }
    if ((wings == 1) && (paracaidas == 0))
    {
        wings_anim += 0.12
        if (y > (ystart + 16))
        {
            if (vspeed < -0.5)
                vspeed = -0.5
            else
                vspeed -= 0.085
        }
        else if (y < (ystart - 16))
        {
            if (vspeed > 0.5)
                vspeed = 0.5
            else
                vspeed += 0.085
        }
    }
    if (paracaidas == 1)
    {
        if (x > (xstart + 16))
        {
            if (hspeed < -0.5)
                hspeed = -0.5
            else
                hspeed -= 0.015
        }
        else if (x < (xstart - 16))
        {
            if (hspeed > 0.5)
                hspeed = 0.5
            else
                hspeed += 0.015
        }
        if collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_mario, 1, 0)
        {
            paracaidas = 0
            if instance_exists(obj_mario)
            {
                if (obj_mario.vspeed < 0)
                {
                    obj_mario.vspeed = 0
                    vspeed = -1.5
                }
            }
        }
        if (gravity == 0)
        {
            instance_create((x + (3 * direct)), y, obj_paracaidas_go)
            paracaidas = 0
            hspeed = 0
            alarm[10] = 10
        }
    }
}

