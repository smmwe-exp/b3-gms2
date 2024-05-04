var _obj, apilar_c;
event_inherited()
if (obj_levelmanager.editor == 1)
{
    if (object_index == obj_bobomb_ready)
    {
        if (global.apariencia == 1)
            sprite_index = spr_SMB3_bobomb_ready
        else if (global.apariencia == 2)
            sprite_index = spr_bobomb_ready
    }
    else if (global.apariencia == 1)
    {
        if ((__background_get( e__BG.Index, 0 ) == scr_bg_castle()) || ((__background_get( e__BG.Index, 0 ) == scr_bg_ghost_house()) || ((__background_get( e__BG.Index, 0 ) == scr_bg_underground()) || (global.modo_noche == 1))))
            sprite_index = spr_SMB3_bobomb_night
        else
            sprite_index = spr_SMB3_bobomb
    }
    else if (global.apariencia == 2)
        sprite_index = spr_bobomb
}
if ((apilar == 1) && (obj_apilar != ""))
{
    if (apilado == 0)
    {
        _obj = asset_get_index(obj_apilar)
        apilar_c = instance_create(x, y, _obj)
        apilar_c.wings = obj_apilar_wings
        apilar_c.apilado = 1
        my_apilar = apilar_c.id
        apilado = 1
    }
    if (my_apilar != obj_lighting)
    {
        if instance_exists(my_apilar)
        {
            if (my_apilar.object_index == obj_jumppiranha)
            {
                my_apilar.x = (x - 8)
                my_apilar.y = (y - 14)
                if (global.apariencia == 2)
                    my_apilar.sprite_index = spr_jumppiranha
                my_apilar.image_speed = 0.15
            }
            else if (my_apilar.object_index == obj_muncher)
            {
                my_apilar.x = (x - 8)
                my_apilar.y = (y - 14)
            }
            else if (my_apilar.object_index == obj_thwomp)
            {
                my_apilar.x = x
                my_apilar.y = (y - 16)
            }
            else if (my_apilar.object_index == obj_boo)
            {
                my_apilar.x = x
                my_apilar.y = (y - 8)
            }
            else
            {
                my_apilar.x = x
                my_apilar.y = (y - 13)
            }
            my_apilar.depth = (depth + 1)
            if ((my_apilar.object_index != obj_jumppiranha) && (my_apilar.object_index != obj_thwomp))
                my_apilar.direct = direct
            else
                my_apilar.direct = 1
            my_apilar.direct = direct
            my_apilar.speed = 0
        }
        else
        {
            apilar = 0
            obj_apilar = ""
            apilado = 0
            obj_apilar_wings = 0
            if (obj_levelmanager.editor == 1)
            {
                with (obj_generador)
                {
                    g_apilar = 0
                    g_obj_apilar = ""
                    g_obj_apilar_wings = 0
                }
            }
        }
    }
}
if ((y >= (room_height - 24)) && ((__background_get( e__BG.Index, 0 ) == scr_bg_castle()) && (obj_levelmanager.editor == 0)))
{
    instance_create(x, y, obj_explosion)
    instance_destroy()
}

