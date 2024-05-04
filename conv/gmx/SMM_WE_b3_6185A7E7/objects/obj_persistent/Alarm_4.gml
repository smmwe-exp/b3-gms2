audio_play_sound(snd_add_paracaidas, 0, false)
if (global.idioma == 0)
    __background_set( e__BG.Index, 0, bg_login )
else
    __background_set( e__BG.Index, 0, bg_login_english )
instance_create((__view_get( e__VW.XView, 0 ) + 94), (__view_get( e__VW.YView, 0 ) + 78), obj_input_name_user)
instance_create((__view_get( e__VW.XView, 0 ) + 94), (__view_get( e__VW.YView, 0 ) + 117), obj_input_password)
instance_create((__view_get( e__VW.XView, 0 ) + 94), (__view_get( e__VW.YView, 0 ) + 163), obj_button_name_user)
instance_create(0, 0, obj_cursor)

