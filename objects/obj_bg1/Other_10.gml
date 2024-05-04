if (bg_s == "ground")
{
    __background_set( e__BG.Index, 0, scr_bg_ground( ))
    obj_levelmanager.levelmusic = scr_snd_ground()
    s_music_editor = scr_snd_editor_ground()
    b_dec = 39
    s_dec_hongo = 69
    s_block_hidden = 7
    s_puente = 94
}
else if (bg_s == "underground")
{
    __background_set( e__BG.Index, 0, scr_bg_underground( ))
    obj_levelmanager.levelmusic = scr_snd_underground()
    s_music_editor = scr_snd_editor_underground()
    b_dec = 42
    s_dec_hongo = 69
    s_block_hidden = 8
    s_puente = 96
}
else if (bg_s == "castle")
{
    __background_set( e__BG.Index, 0, scr_bg_castle( ))
    obj_levelmanager.levelmusic = scr_snd_castle()
    s_music_editor = scr_snd_editor_castle()
    b_dec = 35
    s_dec_hongo = 69
    s_block_hidden = 8
    s_puente = 96
}
else if (bg_s == "underwater")
{
    __background_set( e__BG.Index, 0, scr_bg_underwater( ))
    obj_levelmanager.levelmusic = scr_snd_underwater()
    s_music_editor = scr_snd_editor_underwater()
    b_dec = 43
    s_dec_hongo = 71
    s_block_hidden = 4
    s_puente = 96
}
else if (bg_s == "ghost")
{
    __background_set( e__BG.Index, 0, scr_bg_ghost_house( ))
    obj_levelmanager.levelmusic = scr_snd_ghost_house()
    s_music_editor = scr_snd_editor_ghost()
    b_dec = 38
    s_dec_hongo = 69
    s_block_hidden = 8
    s_puente = 96
}
else if (bg_s == "airship")
{
    __background_set( e__BG.Index, 0, scr_bg_airship( ))
    obj_levelmanager.levelmusic = scr_snd_airship()
    s_music_editor = scr_snd_editor_airship()
    b_dec = 34
    s_dec_hongo = 68
    s_block_hidden = 7
    s_puente = 96
}
else if (bg_s == "forest")
{
    __background_set( e__BG.Index, 0, scr_bg_forest( ))
    obj_levelmanager.levelmusic = scr_snd_forest()
    s_music_editor = scr_snd_editor_forest()
    b_dec = 37
    s_dec_hongo = 69
    s_block_hidden = 6
    s_puente = 94
}
else if (bg_s == "sky")
{
    __background_set( e__BG.Index, 0, scr_bg_sky( ))
    obj_levelmanager.levelmusic = scr_snd_sky()
    s_music_editor = scr_snd_editor_sky()
    b_dec = 40
    s_dec_hongo = 69
    s_block_hidden = 7
    s_puente = 94
}
else if (bg_s == "desert")
{
    __background_set( e__BG.Index, 0, scr_bg_desert( ))
    obj_levelmanager.levelmusic = scr_snd_desert()
    s_music_editor = scr_snd_editor_desert()
    b_dec = 36
    s_dec_hongo = 69
    s_block_hidden = 5
    s_puente = 94
}
else if (bg_s == "snow")
{
    __background_set( e__BG.Index, 0, scr_bg_snow( ))
    obj_levelmanager.levelmusic = scr_snd_snow()
    s_music_editor = scr_snd_editor_snow()
    b_dec = 41
    s_dec_hongo = 70
    s_block_hidden = 7
    s_puente = 95
}
scr_create_bg_anim()

