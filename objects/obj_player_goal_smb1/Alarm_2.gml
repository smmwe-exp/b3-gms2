if ((!audio_is_playing(bgm_sm1clear)) && (!audio_is_playing(snd_SMB_clear_superball)))
{
    if (global.fireworks == 0)
    {
        if (instance_exists(obj_editormanager) && (obj_levelmanager.editor == 0))
        {
            with (obj_creator_jugar_editar)
                event_user(2)
        }
        else if ((!instance_exists(obj_editormanager)) && (obj_levelmanager.editor == 0))
            instance_create(__view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), obj_superado_bg)
    }
    else if (global.fireworks > 1)
    {
        instance_create((__view_get( e__VW.XView, 0 ) + random_range(32, 336)), (__view_get( e__VW.YView, 0 ) + random_range(32, 64)), obj_firework_spawner)
        global.fireworks--
        alarm[2] = 30
    }
    else
    {
        instance_create((__view_get( e__VW.XView, 0 ) + random_range(32, 336)), (__view_get( e__VW.YView, 0 ) + random_range(32, 64)), obj_firework_spawner)
        global.fireworks = 0
        alarm[2] = 120
    }
}
else
    alarm[2] = 1

