if ((sprite_index == spr_charginchuck_walk) || (sprite_index == spr_charginchuck_jump))
{
    if (((hspeed < 0) && collision_rectangle((bbox_left + (hspeed * 2)), (bbox_top + 4), (bbox_left + (hspeed * 2)), (bbox_bottom - 1), obj_solid, 0, 0)) || ((hspeed > 0) && collision_rectangle((bbox_right + (hspeed * 2)), (bbox_top + 4), (bbox_right + (hspeed * 2)), (bbox_bottom - 1), obj_solid, 0, 0)))
    {
        if (gravity == 0)
        {
            sprite_index = spr_charginchuck_jump
            image_speed = 0
            image_index = 0
            vspeed = -4.5
            y--
        }
    }
    if ((hspeed < 0) && collision_rectangle((bbox_left + hspeed), (bbox_top + 4), (bbox_left + hspeed), (bbox_bottom - 1), obj_solid, 0, 0))
        x += 1.75
    if ((hspeed > 0) && collision_rectangle((bbox_right + hspeed), (bbox_top + 4), (bbox_right + hspeed), (bbox_bottom - 1), obj_solid, 0, 0))
        x -= 1.75
}
event_user(4)
event_user(8)
if (gravity == 0)
{
    if (sprite_index == spr_charginchuck_jump)
    {
        sprite_index = spr_charginchuck_walk
        image_speed = 0.5
        image_index = 1
    }
    if instance_exists(obj_mario)
    {
        if (((hspeed < 0) && (obj_mario.x > (x + 32))) || ((hspeed > 0) && (obj_mario.x < (x - 32))))
        {
            sprite_index = spr_charginchuck
            hspeed = 0
            alarm[10] = 32
        }
    }
}

