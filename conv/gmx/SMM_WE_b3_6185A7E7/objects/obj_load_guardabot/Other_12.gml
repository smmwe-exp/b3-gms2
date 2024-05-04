if (global.bg_level == "ground")
{
    __background_set( e__BG.Index, 0, scr_bg_ground( ))
    obj_levelmanager.levelmusic = scr_snd_ground()
}
else if (global.bg_level == "underground")
{
    __background_set( e__BG.Index, 0, scr_bg_underground( ))
    obj_levelmanager.levelmusic = scr_snd_underground()
}
else if (global.bg_level == "castle")
{
    __background_set( e__BG.Index, 0, scr_bg_castle( ))
    obj_levelmanager.levelmusic = scr_snd_castle()
}
else if (global.bg_level == "underwater")
{
    __background_set( e__BG.Index, 0, scr_bg_underwater( ))
    obj_levelmanager.levelmusic = scr_snd_underwater()
}
else if (global.bg_level == "ghost")
{
    __background_set( e__BG.Index, 0, scr_bg_ghost_house( ))
    obj_levelmanager.levelmusic = scr_snd_ghost_house()
}
else if (global.bg_level == "airship")
{
    __background_set( e__BG.Index, 0, scr_bg_airship( ))
    obj_levelmanager.levelmusic = scr_snd_airship()
}
else if (global.bg_level == "forest")
{
    __background_set( e__BG.Index, 0, scr_bg_forest( ))
    obj_levelmanager.levelmusic = scr_snd_forest()
}
else if (global.bg_level == "sky")
{
    __background_set( e__BG.Index, 0, scr_bg_sky( ))
    obj_levelmanager.levelmusic = scr_snd_sky()
}
else if (global.bg_level == "desert")
{
    __background_set( e__BG.Index, 0, scr_bg_desert( ))
    obj_levelmanager.levelmusic = scr_snd_desert()
}
else if (global.bg_level == "snow")
{
    __background_set( e__BG.Index, 0, scr_bg_snow( ))
    obj_levelmanager.levelmusic = scr_snd_snow()
}
if (room == rm_title)
{
    if (global.modo_noche == 1)
        obj_levelmanager.levelmusic = 192
    else
        obj_levelmanager.levelmusic = 191
}
if (global.bg_level == "castle")
{
    if instance_exists(obj_lava_water)
    {
        with (obj_lava_water)
            instance_destroy()
    }
    if (global.apariencia == 0)
    {
        with (instance_create(__view_get( e__VW.XView, 0 ), (pos_y + 12), obj_lava_water))
        {
            sprite_index = spr_SMB_lava
            pos_y = other.pos_y
            pos_y_limit = other.pos_y_limit
        }
    }
    else if (global.apariencia == 1)
    {
        with (instance_create(__view_get( e__VW.XView, 0 ), (pos_y + 12), obj_lava_water))
        {
            sprite_index = spr_SMB3_lava
            pos_y = other.pos_y
            pos_y_limit = other.pos_y_limit
        }
    }
    else
    {
        with (instance_create(__view_get( e__VW.XView, 0 ), (pos_y + 12), obj_lava_water))
        {
            pos_y = other.pos_y
            pos_y_limit = other.pos_y_limit
        }
    }
}
else if ((global.bg_level == "forest") && (global.modo_noche == 1))
{
    if instance_exists(obj_lava_water)
    {
        with (obj_lava_water)
            instance_destroy()
    }
    if (global.apariencia == 0)
    {
        with (instance_create(__view_get( e__VW.XView, 0 ), (pos_y + 12), obj_lava_water))
        {
            sprite_index = spr_SMB_lava_purple
            pos_y = other.pos_y
            pos_y_limit = other.pos_y_limit
        }
    }
    else if (global.apariencia == 1)
    {
        with (instance_create(__view_get( e__VW.XView, 0 ), (pos_y + 12), obj_lava_water))
        {
            sprite_index = spr_SMB3_lava_purple
            pos_y = other.pos_y
            pos_y_limit = other.pos_y_limit
        }
    }
    else
    {
        with (instance_create(__view_get( e__VW.XView, 0 ), (pos_y + 12), obj_lava_water))
        {
            sprite_index = spr_lava_purple
            pos_y = other.pos_y
            pos_y_limit = other.pos_y_limit
        }
    }
}
else if ((global.bg_level == "forest") && (global.modo_noche == 0))
{
    if instance_exists(obj_lava_water)
    {
        with (obj_lava_water)
            instance_destroy()
    }
    if (global.apariencia == 0)
    {
        with (instance_create(__view_get( e__VW.XView, 0 ), (pos_y + 12), obj_lava_water))
        {
            sprite_index = spr_SMB_water
            pos_y = other.pos_y
            pos_y_limit = other.pos_y_limit
        }
    }
    else if (global.apariencia == 1)
    {
        with (instance_create(__view_get( e__VW.XView, 0 ), (pos_y + 12), obj_lava_water))
        {
            sprite_index = spr_SMB3_water
            pos_y = other.pos_y
            pos_y_limit = other.pos_y_limit
        }
    }
    else
    {
        with (instance_create(__view_get( e__VW.XView, 0 ), (pos_y + 12), obj_lava_water))
        {
            sprite_index = spr_water
            pos_y = other.pos_y
            pos_y_limit = other.pos_y_limit
        }
    }
}
else if instance_exists(obj_lava_water)
{
    with (obj_lava_water)
        instance_destroy()
}
scr_create_bg_anim()

