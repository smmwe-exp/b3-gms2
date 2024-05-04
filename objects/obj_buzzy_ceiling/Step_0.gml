event_inherited()
if (gravity == 0)
{
    with (instance_create(x, y, obj_shell_held))
    {
        sprite_index = other.sprite_index
        koopainside = -1
        if ((!instance_exists(obj_mario)) || (obj_mario.x < x))
        {
            prevhspeed = -3
            hspeed = -3
        }
        else
        {
            prevhspeed = 3
            hspeed = 3
        }
    }
    instance_destroy()
}

