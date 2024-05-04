if place_meeting(x, y, obj_blockparent)
{
    with (instance_create(round(x), round((y + sprite_height)), obj_enemy_dead))
        sprite_index = spr_goomba
    with (instance_create(x, (y - 6), obj_getshoe))
    {
        vspeed = -5
        direct = other.direct
    }
    instance_destroy()
}
else
    event_user(0)

