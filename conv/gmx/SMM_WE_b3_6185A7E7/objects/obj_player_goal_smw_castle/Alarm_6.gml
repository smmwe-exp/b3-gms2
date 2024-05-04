if (global.apariencia == 0)
    audio_play_sound(snd_SMB_course_clear_castle, 0, false)
else if (global.apariencia == 1)
    audio_play_sound(snd_SMB3_course_clear_castle, 0, false)
else if (global.apariencia == 2)
    audio_play_sound(bgm_smwclear_castle, 0, false)
else if (global.apariencia == 3)
    audio_play_sound(snd_NSMBU_clear_castle, 0, false)
else if (global.apariencia == 4)
    audio_play_sound(snd_SMB2_course_clear_castle, 0, false)
with (obj_levelmanager)
{
    event_user(3)
    alarm[2] = 0
}

