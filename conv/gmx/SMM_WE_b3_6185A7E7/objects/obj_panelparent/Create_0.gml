var value;
with (obj_panelparent)
{
    if (!ds_map_exists(global.worldmap, string(id)))
        ds_map_replace(global.worldmap, string(id), "0000")
    value = ds_map_find_value(global.worldmap, string(id))
    if (value == "W")
    {
        beaten = 1
        open[0] = 1
        open[1] = 1
        open[2] = 1
        open[3] = 1
        event_user(0)
    }
    else
    {
        beaten = 0
        open[0] = real(string_char_at(value, 1))
        open[1] = real(string_char_at(value, 2))
        open[2] = real(string_char_at(value, 3))
        open[3] = real(string_char_at(value, 4))
    }
    ready = 0
    cpoint = -4
    alarm[0] = 1
}

