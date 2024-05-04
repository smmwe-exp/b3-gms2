var i_d;
i_d = ds_map_find_value(async_load, "id")
if (i_d == texto)
{
    if ds_map_find_value(async_load, "status")
    {
        if (ds_map_find_value(async_load, "result") != "")
            new_texto = ds_map_find_value(async_load, "result")
    }
}

