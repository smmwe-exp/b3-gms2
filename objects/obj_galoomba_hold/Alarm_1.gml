with (instance_create(x, y, obj_galoomba))
{
    hspeed = (0.5 * sign(other.direct))
    key = other.key
    if (other.gravity == 0)
        vspeed = -2.5
}
instance_destroy()

