global.mariostart = 0
global.modojuego = 0
with (obj_persistent)
{
    cronometro = 0
    cronometro_play = 0
    cronometro_restart = 0
    minutos = 0
    segundos = 0
    pasos = 0
    cronometro_cp_minutos = 0
    cronometro_cp_segundos = 0
    cronometro_cp_pasos = 0
}
global.minutos_r = 0
global.segundos_r = 0
global.pasos_r = 0
instance_create((__view_get( e__VW.XView, 0 ) + 361), __view_get( e__VW.YView, 0 ), obj_menu_editor_ext)
can_anim = 1
anim = 0
audio_play_sound(snd_guardabot, 99, true)
pos = 57
list_post = 1
my_list = ds_list_create()
for (fname = file_find_first((global.directorio + "*.swe"), 0); fname != ""; fname = file_find_next())
    ds_list_add(my_list, fname)
event_user(0)
if (ds_list_size(my_list) > 6)
    instance_create((__view_get( e__VW.XView, 0 ) + 336), (__view_get( e__VW.YView, 0 ) + 113), obj_bt_gb_next)
else
{
    with (instance_create((__view_get( e__VW.XView, 0 ) + 336), (__view_get( e__VW.YView, 0 ) + 113), obj_bt_gb_next))
    {
        image_speed = 0
        image_index = 1
    }
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 19), (__view_get( e__VW.YView, 0 ) + 113), obj_bt_gb_before))
{
    image_speed = 0
    image_index = 1
}

