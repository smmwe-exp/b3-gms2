image_speed = 0
image_index = global.idioma
if instance_exists(obj_creator_jugar_editar)
    audio_pause_sound(obj_creator_jugar_editar.music_editor)
instance_create((__view_get( e__VW.XView, 0 ) + 50), (__view_get( e__VW.YView, 0 ) + 45), obj_input)
with (instance_create((__view_get( e__VW.XView, 0 ) + 20), (__view_get( e__VW.YView, 0 ) + 80), obj_etiquetas))
{
    index = 0
    texto = "tradicional"
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 136), (__view_get( e__VW.YView, 0 ) + 80), obj_etiquetas))
{
    index = 1
    texto = "puzles"
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 252), (__view_get( e__VW.YView, 0 ) + 80), obj_etiquetas))
{
    index = 2
    texto = "contrarreloj"
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 20), (__view_get( e__VW.YView, 0 ) + 109), obj_etiquetas))
{
    index = 3
    texto = "autoavance"
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 136), (__view_get( e__VW.YView, 0 ) + 109), obj_etiquetas))
{
    index = 4
    texto = "automatismos"
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 252), (__view_get( e__VW.YView, 0 ) + 109), obj_etiquetas))
{
    index = 5
    texto = "corto pero intenso"
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 20), (__view_get( e__VW.YView, 0 ) + 138), obj_etiquetas))
{
    index = 6
    texto = "competitivo"
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 136), (__view_get( e__VW.YView, 0 ) + 138), obj_etiquetas))
{
    index = 7
    texto = "tematico"
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 252), (__view_get( e__VW.YView, 0 ) + 138), obj_etiquetas))
{
    index = 8
    texto = "musica"
}
instance_create((__view_get( e__VW.XView, 0 ) + 204), (__view_get( e__VW.YView, 0 ) + 178), obj_button_notification_aceptar)
instance_create((__view_get( e__VW.XView, 0 ) + 62), (__view_get( e__VW.YView, 0 ) + 178), obj_button_notification_cancelar)

