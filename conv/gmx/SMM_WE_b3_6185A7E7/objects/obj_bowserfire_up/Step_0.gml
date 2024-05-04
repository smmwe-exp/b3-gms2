event_inherited()
if ((y + 16) < __view_get( e__VW.YView, 0 ))
{
    if ((last == 1) && (visible == 1))
        event_user(1)
    else
        instance_destroy()
}

