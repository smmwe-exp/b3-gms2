with (instance_create((x - 8), (y - 8), obj_smoke))
{
    sprite_index = spr_effect_transform
    image_speed = 0.3
}
audio_play_sound(snd_change_night_day, 0, false)
if (global.modo_noche == 0)
    global.modo_noche = 1
else
    global.modo_noche = 0
if (global.bg_level == "ground")
{
    __background_set( e__BG.Index, 0, scr_bg_ground( ))
    obj_levelmanager.levelmusic = scr_snd_ground()
    s_music_editor = scr_snd_editor_ground()
}
else if (global.bg_level == "underground")
{
    __background_set( e__BG.Index, 0, scr_bg_underground( ))
    obj_levelmanager.levelmusic = scr_snd_underground()
    s_music_editor = scr_snd_editor_underground()
}
else if (global.bg_level == "castle")
{
    __background_set( e__BG.Index, 0, scr_bg_castle( ))
    obj_levelmanager.levelmusic = scr_snd_castle()
    s_music_editor = scr_snd_editor_castle()
}
else if (global.bg_level == "underwater")
{
    __background_set( e__BG.Index, 0, scr_bg_underwater( ))
    obj_levelmanager.levelmusic = scr_snd_underwater()
    s_music_editor = scr_snd_editor_underwater()
}
else if (global.bg_level == "ghost")
{
    __background_set( e__BG.Index, 0, scr_bg_ghost_house( ))
    obj_levelmanager.levelmusic = scr_snd_ghost_house()
    s_music_editor = scr_snd_editor_ghost()
}
else if (global.bg_level == "airship")
{
    __background_set( e__BG.Index, 0, scr_bg_airship( ))
    obj_levelmanager.levelmusic = scr_snd_airship()
    s_music_editor = scr_snd_editor_airship()
}
else if (global.bg_level == "forest")
{
    __background_set( e__BG.Index, 0, scr_bg_forest( ))
    obj_levelmanager.levelmusic = scr_snd_forest()
    s_music_editor = scr_snd_editor_forest()
}
else if (global.bg_level == "sky")
{
    __background_set( e__BG.Index, 0, scr_bg_sky( ))
    obj_levelmanager.levelmusic = scr_snd_sky()
    s_music_editor = scr_snd_editor_sky()
}
else if (global.bg_level == "desert")
{
    __background_set( e__BG.Index, 0, scr_bg_desert( ))
    obj_levelmanager.levelmusic = scr_snd_desert()
    s_music_editor = scr_snd_editor_desert()
}
else if (global.bg_level == "snow")
{
    __background_set( e__BG.Index, 0, scr_bg_snow( ))
    obj_levelmanager.levelmusic = scr_snd_snow()
    s_music_editor = scr_snd_editor_snow()
}
scr_create_bg_anim()
audio_stop_sound(obj_creator_jugar_editar.music_editor)
audio_play_sound(s_music_editor, 99, true)
obj_creator_jugar_editar.music_editor = s_music_editor
event_user(4)

