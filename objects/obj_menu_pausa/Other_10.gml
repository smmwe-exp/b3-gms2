instance_activate_all()
if background_exists(back)
    background_delete(back)
if instance_exists(obj_cursor)
{
    with (obj_cursor)
        instance_destroy()
}
if (!instance_exists(obj_deadmario))
{
    if audio_is_paused(music)
        audio_resume_sound(music)
}
if audio_is_paused(scr_snd_starman())
    audio_resume_sound(scr_snd_starman())
if audio_is_paused(scr_snd_switchsong())
    audio_resume_sound(scr_snd_switchsong())
if audio_is_paused(scr_snd_dead())
    audio_resume_sound(scr_snd_dead())
if audio_is_paused(scr_snd_hurryup())
    audio_resume_sound(scr_snd_hurryup())
if audio_is_paused(bgm_sm1clear)
    audio_resume_sound(bgm_sm1clear)
if audio_is_paused(snd_SMB_clear_superball)
    audio_resume_sound(snd_SMB_clear_superball)
if audio_is_paused(snd_SMB3_course_clear)
    audio_resume_sound(snd_SMB3_course_clear)
if audio_is_paused(bgm_smwclear)
    audio_resume_sound(bgm_smwclear)
if audio_is_paused(snd_SMB_course_clear_castle)
    audio_resume_sound(snd_SMB_course_clear_castle)
if audio_is_paused(snd_SMB3_course_clear_castle)
    audio_resume_sound(snd_SMB3_course_clear_castle)
if audio_is_paused(bgm_smwclear_castle)
    audio_resume_sound(bgm_smwclear_castle)
if audio_is_paused(snd_skid)
    audio_resume_sound(snd_skid)
if audio_is_paused(snd_pmeter)
    audio_resume_sound(snd_pmeter)
if ((obj_persistent.modo_android == 1) && (global.controles_tactiles == 1))
{
    with (obj_persistent)
    {
        event_user(2)
        event_user(3)
    }
}
if ((obj_persistent.modo_android == 1) && (global.controles_tactiles == 1))
{
    with (obj_persistent)
    {
        event_user(2)
        event_user(3)
    }
}
instance_destroy()

