if (instance_exists(obj_mario) && keyboard_check(global.abajo))
{
    obj_mario.hspeed = hspeed
    obj_mario.direct = direct
    obj_mario.x = x
    y = obj_mario.y
    obj_mario.invincible = 1
}
else
{
    instance_destroy()
    exit
}
if (type == 0)
{
    sprite_index = scr_marioslide()
    if (global.powerup == 0)
        mask_index = spr_smallmask
    else
        mask_index = spr_bigmask
}
else
{
    if (((type == 1) && (global.powerup != -37)) || ((type == 2) && (global.powerup != -38)))
        instance_destroy()
    if (keyboard_check_pressed(global.saltar) && (obj_mario.state < 2))
    {
        audio_play_sound(snd_jump, 0, false)
        with (obj_mario)
        {
            vspeed = -3
            state = 2
        }
    }
    if (type == 2)
    {
        if (hspeed > 0)
            direct = 1
        else
            direct = -1
    }
    else if (sprite_index == spr_inshell)
        image_speed = (speed / 6)
}
if collision_rectangle(bbox_right, bbox_bottom, bbox_right, (bbox_bottom + 2), obj_slopeparent, 1, 0)
    hspeed -= 0.1
if collision_rectangle(bbox_left, bbox_bottom, bbox_left, (bbox_bottom + 2), obj_slopeparent, 1, 0)
    hspeed += 0.1
if (hspeed > 3)
    hspeed = 3
if (hspeed < -3)
    hspeed = -3
if ((obj_mario.state < 2) && ((!collision_rectangle(bbox_right, bbox_bottom, bbox_right, (bbox_bottom + 2), obj_slopeparent, 1, 0)) && (!collision_rectangle(bbox_left, bbox_bottom, bbox_left, (bbox_bottom + 2), obj_slopeparent, 1, 0))))
{
    if (type == 0)
        friction = 0.1
    else
        friction = 0.02
    if (abs(hspeed) < 0.05)
        instance_destroy()
}
else
    friction = 0
if (((hspeed > 0) && collision_rectangle(bbox_right, (bbox_top + 4), ((bbox_right + 1) + hspeed), (bbox_bottom - 1), obj_solid, 0, 0)) || ((hspeed < 0) && collision_rectangle(((bbox_left - 1) + hspeed), (bbox_top + 4), bbox_left, (bbox_bottom - 1), obj_solid, 0, 0)))
{
    if (type == 1)
    {
        audio_play_sound(snd_bump, 0, false)
        instance_create((x - 8), (y + 16), obj_blockbumper)
        with (instance_create((x + (8 * sign(hspeed))), (y + 24), obj_smoke))
            sprite_index = spr_shellbump
        hspeed = (-hspeed)
    }
    else
        instance_destroy()
}

