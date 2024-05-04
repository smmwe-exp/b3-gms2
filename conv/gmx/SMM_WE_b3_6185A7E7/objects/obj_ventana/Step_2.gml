if (can_anim == 1)
{
    if (anim < 1)
        anim += 0.08
    else
    {
        if (number == 1)
            event_user(9)
        else if (number == 2)
            event_user(3)
        else if (number == 3.1)
            event_user(2)
        else if (number == 3)
            event_user(1)
        else if (number == 4)
            event_user(4)
        else if (number == 2.1)
            event_user(5)
        else if (number == 3.2)
            event_user(8)
        else if (number == 6)
            event_user(6)
        else if (number == 7)
            event_user(7)
        else if (number == 10)
            event_user(10)
        else
            event_user(0)
        anim = 1
        can_anim = 0
    }
    image_xscale = anim
    image_yscale = anim
}
if (can_anim2 == 1)
{
    if instance_exists(obj_window_button)
    {
        with (obj_window_button)
            instance_destroy()
    }
    if instance_exists(obj_button_wings)
    {
        with (obj_button_wings)
            instance_destroy()
    }
    if (anim > 0.6)
        anim -= 0.1
    else
        instance_destroy()
    image_xscale = anim
    image_yscale = anim
}

