audio_play_sound(snd_desafio_super_mario, 1, true)
instance_create((__view_get( e__VW.XView, 0 ) + 361), __view_get( e__VW.YView, 0 ), obj_menu_editor_ext)
if (global.DSM_level == 0)
{
    instance_create((__view_get( e__VW.XView, 0 ) + 132), (__view_get( e__VW.YView, 0 ) + 182), obj_DSM_button)
    instance_create(__view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), obj_castle_start)
}

