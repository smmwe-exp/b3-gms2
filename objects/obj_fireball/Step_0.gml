prevhspeed = hspeed
event_inherited()
if (hspeed != prevhspeed)
    event_user(0)
if outside_view()
    instance_destroy()
if ((gravity == 0) && (object_index != obj_fire_clown_small))
{
    vspeed = -2
    y--
}

