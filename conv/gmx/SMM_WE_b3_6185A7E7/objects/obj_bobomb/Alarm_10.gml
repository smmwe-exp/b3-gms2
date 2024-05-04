event_inherited()
if ((wings == 1) || (paracaidas == 1))
{
    if (global.apariencia == 0)
    {
        if (night_sprite == 1)
            sprite_index = spr_SMB_bobomb_wings_night
        else
            sprite_index = spr_SMB_bobomb_wings
    }
    else if (global.apariencia == 1)
    {
        if (night_sprite == 1)
            sprite_index = spr_SMB3_bobomb_wings_night
        else
            sprite_index = spr_SMB3_bobomb_wings
    }
    else if (global.apariencia == 2)
        sprite_index = spr_bobomb_wings
}

