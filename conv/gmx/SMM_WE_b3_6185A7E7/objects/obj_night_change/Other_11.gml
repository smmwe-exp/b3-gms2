if (global.bg_level == "ground")
{
    event_user(0)
    __background_set( e__BG.Index, 0, scr_bg_ground( ))
    obj_levelmanager.levelmusic = scr_snd_ground()
    s_music_editor = scr_snd_editor_ground()
}
else if (global.bg_level == "underground")
{
    event_user(0)
    __background_set( e__BG.Index, 0, scr_bg_underground( ))
    obj_levelmanager.levelmusic = scr_snd_underground()
    s_music_editor = scr_snd_editor_underground()
}
else if (global.bg_level == "castle")
{
    event_user(0)
    __background_set( e__BG.Index, 0, scr_bg_castle( ))
    obj_levelmanager.levelmusic = scr_snd_castle()
    s_music_editor = scr_snd_editor_castle()
}
else if (global.bg_level == "underwater")
{
    event_user(0)
    __background_set( e__BG.Index, 0, scr_bg_underwater( ))
    obj_levelmanager.levelmusic = scr_snd_underwater()
    s_music_editor = scr_snd_editor_underwater()
}
else if (global.bg_level == "ghost")
{
    event_user(0)
    __background_set( e__BG.Index, 0, scr_bg_ghost_house( ))
    obj_levelmanager.levelmusic = scr_snd_ghost_house()
    s_music_editor = scr_snd_editor_ghost()
}
else if (global.bg_level == "airship")
{
    event_user(0)
    __background_set( e__BG.Index, 0, scr_bg_airship( ))
    obj_levelmanager.levelmusic = scr_snd_airship()
    s_music_editor = scr_snd_editor_airship()
}
else if (global.bg_level == "forest")
{
    event_user(0)
    __background_set( e__BG.Index, 0, scr_bg_forest( ))
    obj_levelmanager.levelmusic = scr_snd_forest()
    s_music_editor = scr_snd_editor_forest()
}
else if (global.bg_level == "sky")
{
    event_user(0)
    __background_set( e__BG.Index, 0, scr_bg_sky( ))
    obj_levelmanager.levelmusic = scr_snd_sky()
    s_music_editor = scr_snd_editor_sky()
}
else if (global.bg_level == "desert")
{
    event_user(0)
    __background_set( e__BG.Index, 0, scr_bg_desert( ))
    obj_levelmanager.levelmusic = scr_snd_desert()
    s_music_editor = scr_snd_editor_desert()
}
else if (global.bg_level == "snow")
{
    event_user(0)
    __background_set( e__BG.Index, 0, scr_bg_snow( ))
    obj_levelmanager.levelmusic = scr_snd_snow()
    s_music_editor = scr_snd_editor_snow()
}
scr_create_bg_anim()
audio_stop_sound(obj_creator_jugar_editar.music_editor)
audio_play_sound(s_music_editor, 99, true)
obj_creator_jugar_editar.music_editor = s_music_editor
instance_activate_object(obj_player_trail)
if instance_exists(obj_player_trail)
{
    with (obj_player_trail)
        instance_destroy()
}
event_user(2)
obj_editormanager.expand_open = 0
with (obj_bg_selection)
    event_user(0)

