if ((global.powerup == 2) && (instance_number(obj_fireball) < 2))
{
    with (instance_create(x, (y + 16), obj_fireball))
        hspeed = (5 * other.direct)
}
else if ((global.powerup == -46) && (instance_number(obj_hammer) < 2))
{
    with (instance_create(x, (y + 16), obj_hammer))
        hspeed = (1.5 * other.direct)
}
else if (((global.powerup == -49) || (global.powerup == -38)) && (instance_number(obj_iceball) < 1))
{
    with (instance_create(x, (y + 16), obj_iceball))
        hspeed = (3 * other.direct)
}
else if ((global.powerup == -50) && (instance_number(obj_superball) < 2))
{
    with (instance_create(x, (y + 16), obj_superball))
        hspeed = (2 * other.direct)
}
else if ((global.powerup == -41) && (instance_number(obj_shuriken) < 2))
{
    with (instance_create(x, (y + 20), obj_shuriken))
        hspeed = (5 * other.direct)
}
else if ((global.powerup == -51) && (instance_number(obj_pyreball) < 2))
{
    with (instance_create(x, (y + 16), obj_pyreball))
        hspeed = (3 * other.direct)
}
alarm[8] = 10

