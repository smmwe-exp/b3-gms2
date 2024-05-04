alpha += 0.04
if (alpha > 1)
{
    alpha = 1
    if background_exists(back)
        background_delete(back)
    instance_activate_all()
    room_goto(target)
}

