var i;
for (i = 0; i < 5; i++)
{
    with (instance_create(x, y, obj_mechakoopa_debris))
    {
        hspeed = random_range(-1.5, 1.5)
        vspeed = random_range(-3, -1)
        image_speed = 0
        image_index = i
    }
}
instance_destroy()

