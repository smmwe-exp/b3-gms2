if ((other.object_index != obj_grinder) && (other.object_index != obj_crumblebones))
{
    if ((global.apariencia == 2) && ((other.object_index == obj_egg) || (other.object_index == obj_egg_red)))
    {
    }
    else
    {
        scr_musicalscale(id, other.id, 1)
        with (other.id)
        {
            hitpoints = 0
            event_user(0)
        }
    }
}

