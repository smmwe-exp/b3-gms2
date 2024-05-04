var col_mario, col_estalactita, held, cap, cap2;
if instance_exists(mysolid)
{
    mysolid.x = x
    mysolid.y = y
}
col_mario = collision_rectangle(bbox_left, (bbox_top - 6), bbox_right, bbox_top, obj_mario, 1, 0)
if instance_exists(obj_mario)
{
    if (col_mario && ((global.powerup == -77) && ((global.yoshi == 0) && ((obj_mario.can_break_block == 1) && ((object_index != obj_onoffblock) && (object_index != obj_noteblock))))))
    {
        alarm[2] = 1
        with (obj_mario)
        {
            jumpnow = 2
            state = 2
            alarm[4] = 15
            if (isswim == 1)
                vspeed = -2
            else
                vspeed = -4
            y--
        }
    }
}
col_estalactita = collision_rectangle(bbox_left, (bbox_top - 6), bbox_right, bbox_top, obj_estalactita, 1, 0)
if (col_estalactita && (col_estalactita.vspeed > 0))
{
    ready = 1
    vspeed = -2
    if (object_index == obj_noteblock)
        alarm[0] = 7
    else
        alarm[0] = 4
    event_user(0)
    with (col_estalactita)
        event_user(0)
}
if (wings == 1)
{
    depth = -7
    wings_anim += 0.12
    if (y > (ystart + 14))
    {
        if (vspeed < -0.5)
            vspeed = -0.5
        else
            vspeed -= 0.085
    }
    else if (y < (ystart - 14))
    {
        if (vspeed > 0.5)
            vspeed = 0.5
        else
            vspeed += 0.085
    }
    if (x < (xstart - 40))
    {
        if (hspeed > 0.5)
            hspeed = 0.5
        else
            hspeed += 0.085
    }
    else if (x > (xstart + 40))
    {
        if (hspeed < -0.5)
            hspeed = -0.5
        else
            hspeed -= 0.085
    }
}
if ((wings == 1) && (ready == 1))
{
    with (instance_create((x + 17), (y + 8), obj_wings_dead))
        direct = -1
    with (instance_create((x - 3), (y + 8), obj_wings_dead))
    {
        sprite_index = spr_wings_dead2
        direct = -1
    }
    wings = 0
    speed = 0
}
held = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + 4), obj_holdparent, 0, 0)
if (held && ((held.object_index != obj_helmet) && ((held.object_index != obj_helmet_spiny) && ((held.vspeed < 0) && ((held.bbox_top > (bbox_bottom + held.vspeed)) && (ready == 0))))))
{
    ready = 1
    vspeed = -2
    alarm[0] = 4
    event_user(0)
}
cap = collision_rectangle(bbox_right, (bbox_top + 1), (bbox_right + 1), (bbox_bottom - 4), obj_cap_mario, 0, 0)
cap2 = collision_rectangle(bbox_left, (bbox_top + 1), (bbox_left - 1), (bbox_bottom - 4), obj_cap_mario, 0, 0)
if ((cap2 && ((cap2.x < bbox_left) && ((obj_mario.caped == 1) && (ready == 0)))) || (cap && ((cap.x > bbox_right) && ((obj_mario.caped == 1) && (ready == 0)))))
{
    ready = 1
    vspeed = -2
    alarm[0] = 4
    event_user(0)
}
else if ((cap2 && ((cap2.x < bbox_left) && ((obj_mario.stompstyle == 1) && (ready == 0)))) || (cap && ((cap.x > bbox_right) && ((obj_mario.stompstyle == 1) && (ready == 0)))))
{
    ready = 1
    vspeed = -2
    alarm[0] = 4
    event_user(0)
}
if (speed == 0)
    depth = 9
else
    depth = -2

