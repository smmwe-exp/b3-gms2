if ((other.bbox_bottom < ((bbox_top - vvelocidad) + 5)) && ((other.vspeed >= 0) && (obj_levelmanager.editor == 0)))
{
    with (other.id)
    {
        herido = 1
        event_user(5)
    }
}

