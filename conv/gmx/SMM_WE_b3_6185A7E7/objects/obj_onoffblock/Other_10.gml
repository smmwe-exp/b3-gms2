if (global.apariencia == 0)
    audio_play_sound(snd_SMB_switch, 0, false)
else if (global.apariencia == 1)
    audio_play_sound(snd_SMB3_switch, 0, false)
else if (global.apariencia == 3)
    audio_play_sound(snd_NSMBU_switch, 0, false)
else
    audio_play_sound(snd_warning, 0, false)
if (enable == 0)
{
    if (global.onoffblock == 0)
    {
        global.onoffblock = 1
        if (global.apariencia == 0)
            obj_onoffblock.sprite_index = spr_SMB_onoffblock_off
        else if (global.apariencia == 1)
            obj_onoffblock.sprite_index = spr_SMB3_onoffblock_off
        else if (global.apariencia == 2)
            obj_onoffblock.sprite_index = spr_onoffblock_off
        else if (global.apariencia == 3)
            obj_onoffblock.sprite_index = spr_NSMBU_onoffblock_off
        else if (global.apariencia == 4)
            obj_onoffblock.sprite_index = spr_SMB2_onoffblock_off
    }
    else
    {
        global.onoffblock = 0
        if (global.apariencia == 0)
            obj_onoffblock.sprite_index = spr_SMB_onoffblock_on
        else if (global.apariencia == 1)
            obj_onoffblock.sprite_index = spr_SMB3_onoffblock_on
        else if (global.apariencia == 2)
            obj_onoffblock.sprite_index = spr_onoffblock_on
        else if (global.apariencia == 3)
            obj_onoffblock.sprite_index = spr_NSMBU_onoffblock_on
        else if (global.apariencia == 4)
            obj_onoffblock.sprite_index = spr_SMB2_onoffblock_on
    }
    with (obj_onoffblock)
    {
        enable = 1
        alarm[3] = 5
    }
}

