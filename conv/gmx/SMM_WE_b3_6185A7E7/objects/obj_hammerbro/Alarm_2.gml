if (hammers > 0)
{
    throw = 1
    hammers--
    prev_hspeed = hspeed
    hspeed = 0
    alarm[3] = 10
    alarm[2] = 20
}
else
{
    throw = 0
    hammers = (0 + random(round(3)))
    hspeed = prev_hspeed
    alarm[2] = 80
}

