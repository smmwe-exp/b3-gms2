event_inherited()
if ((wings == 1) && (inup == 0))
{
    if (global.apariencia == 0)
    {
        sprite_index = spr_SMB_buzzybeetle_wings
        image_speed = 0
        if ((global.bg_level == "castle") || ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1))))
            image_index = 1
        else
            image_index = 0
    }
    else if (global.apariencia == 1)
    {
        sprite_index = spr_SMB3_buzzybeetle_wings
        image_speed = 0
        if ((global.bg_level == "castle") || ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1))))
            image_index = 1
        else
            image_index = 0
    }
    else
        sprite_index = spr_buzzybeetle_wings
    mytopid = instance_create((x - 8), y, obj_solidtop)
}

