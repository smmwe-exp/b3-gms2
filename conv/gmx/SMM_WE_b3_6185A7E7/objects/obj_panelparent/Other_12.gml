if (beaten == 0)
{
    beaten = 1
    ds_map_replace(global.worldmap, string(id), "W")
    event_user(1)
}

