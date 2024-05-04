if (xscale < 0)
{
    mybullet = instance_create((x - 8), (y + 8), obj_blastakoopa_bullet)
    with (mybullet)
        hspeed = -1
}
else if (xscale > 0)
{
    mybullet = instance_create((x + 8), (y + 8), obj_blastakoopa_bullet)
    with (mybullet)
        hspeed = 1
}
alarm[4] = 30

