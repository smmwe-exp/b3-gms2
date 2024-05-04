if (direct_t == 0)
{
    mysolid = instance_create((x - 16), (y - 16), obj_solid)
    mysolid.image_xscale = 2
    mysolid.image_yscale = (size + 2)
}
else if (direct_t == 1)
{
    if (size == 0)
    {
        mysolid = instance_create((x - 16), (y - 16), obj_solid)
        mysolid.image_xscale = 2
    }
    else if (size == 1)
    {
        mysolid = instance_create((x - 32), (y - 16), obj_solid)
        mysolid.image_xscale = 3
    }
    else if (size == 2)
    {
        mysolid = instance_create((x - 48), (y - 16), obj_solid)
        mysolid.image_xscale = 4
    }
    else if (size == 3)
    {
        mysolid = instance_create((x - 64), (y - 16), obj_solid)
        mysolid.image_xscale = 5
    }
    else if (size == 4)
    {
        mysolid = instance_create((x - 80), (y - 16), obj_solid)
        mysolid.image_xscale = 6
    }
    else if (size == 5)
    {
        mysolid = instance_create((x - 96), (y - 16), obj_solid)
        mysolid.image_xscale = 7
    }
    else if (size == 6)
    {
        mysolid = instance_create((x - 112), (y - 16), obj_solid)
        mysolid.image_xscale = 8
    }
    mysolid.image_yscale = 2
}
else if (direct_t == 2)
{
    if (size == 0)
    {
        mysolid = instance_create((x - 16), (y - 16), obj_solid)
        mysolid.image_yscale = 2
    }
    else if (size == 1)
    {
        mysolid = instance_create((x - 16), (y - 32), obj_solid)
        mysolid.image_yscale = 3
    }
    else if (size == 2)
    {
        mysolid = instance_create((x - 16), (y - 48), obj_solid)
        mysolid.image_yscale = 4
    }
    else if (size == 3)
    {
        mysolid = instance_create((x - 16), (y - 64), obj_solid)
        mysolid.image_yscale = 5
    }
    else if (size == 4)
    {
        mysolid = instance_create((x - 16), (y - 80), obj_solid)
        mysolid.image_yscale = 6
    }
    else if (size == 5)
    {
        mysolid = instance_create((x - 16), (y - 96), obj_solid)
        mysolid.image_yscale = 7
    }
    else if (size == 6)
    {
        mysolid = instance_create((x - 16), (y - 112), obj_solid)
        mysolid.image_yscale = 8
    }
    mysolid.image_xscale = 2
}
else if (direct_t == 3)
{
    mysolid = instance_create((x - 16), (y - 16), obj_solid)
    mysolid.image_xscale = (size + 2)
    mysolid.image_yscale = 2
}

