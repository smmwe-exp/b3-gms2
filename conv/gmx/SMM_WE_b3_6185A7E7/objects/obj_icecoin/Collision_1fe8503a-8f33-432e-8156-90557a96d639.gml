if (obj_levelmanager.editor == 0)
{
    if (__background_get( e__BG.Index, 0 ) != scr_bg_snow())
        event_user(0)
    with (other.id)
        instance_destroy()
}

