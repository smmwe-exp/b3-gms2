if (mysolid != obj_lighting)
{
    mysolid.x = x
    mysolid.y = y
}
if (global.onoffblock == 1)
{
    if (mysolid == obj_lighting)
    {
        event_user(0)
        mysolid = instance_create(x, y, obj_solid)
    }
    image_index = 1
}
else
{
    if ((mysolid != obj_lighting) && instance_exists(mysolid))
    {
        with (mysolid)
            instance_destroy()
        mysolid = 0
    }
    image_index = 0
}
if (outside_view() && (image_index == 1))
    event_user(0)

