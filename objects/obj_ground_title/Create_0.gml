image_speed = 0
if (global.apariencia == 1)
{
    if (__background_get( e__BG.Index, 0 ) == scr_bg_ground())
        sprite_index = spr_SMB3_ground
    else if (__background_get( e__BG.Index, 0 ) == scr_bg_underground())
        sprite_index = spr_SMB3_ground2
    else if (__background_get( e__BG.Index, 0 ) == scr_bg_castle())
        sprite_index = spr_SMB3_ground3
    else if (__background_get( e__BG.Index, 0 ) == scr_bg_underwater())
        sprite_index = spr_ground4
    else if (__background_get( e__BG.Index, 0 ) == scr_bg_ghost_house())
        sprite_index = spr_SMB3_ground5
    else if (__background_get( e__BG.Index, 0 ) == scr_bg_airship())
        sprite_index = spr_ground6
    else if (__background_get( e__BG.Index, 0 ) == scr_bg_forest())
        sprite_index = spr_ground7
    else if (__background_get( e__BG.Index, 0 ) == scr_bg_sky())
        sprite_index = spr_SMB3_ground8
    else if (__background_get( e__BG.Index, 0 ) == scr_bg_desert())
        sprite_index = spr_ground9
    else if (__background_get( e__BG.Index, 0 ) == scr_bg_snow())
        sprite_index = spr_SMB3_ground10
}
else if (global.apariencia == 2)
{
    if (__background_get( e__BG.Index, 0 ) == scr_bg_ground())
        sprite_index = spr_ground
    else if (__background_get( e__BG.Index, 0 ) == scr_bg_underground())
        sprite_index = spr_ground2
    else if (__background_get( e__BG.Index, 0 ) == scr_bg_castle())
        sprite_index = spr_ground3
    else if (__background_get( e__BG.Index, 0 ) == scr_bg_underwater())
        sprite_index = spr_ground4
    else if (__background_get( e__BG.Index, 0 ) == scr_bg_ghost_house())
        sprite_index = spr_ground5
    else if (__background_get( e__BG.Index, 0 ) == scr_bg_airship())
        sprite_index = spr_ground6
    else if (__background_get( e__BG.Index, 0 ) == scr_bg_forest())
        sprite_index = spr_ground7
    else if (__background_get( e__BG.Index, 0 ) == scr_bg_sky())
        sprite_index = spr_ground8
    else if (__background_get( e__BG.Index, 0 ) == scr_bg_desert())
        sprite_index = spr_ground9
    else if (__background_get( e__BG.Index, 0 ) == scr_bg_snow())
    {
        if (global.modo_noche == 1)
            sprite_index = spr_ground11
        else
            sprite_index = spr_ground10
    }
}
clean = 1
ready = 0

