with (obj_mariostart_mario)
    instance_destroy()
if instance_exists(obj_levelmanager)
{
    with (obj_levelmanager)
        canpause = 1
}
if (obj_persistent.cronometro_play == 1)
{
    with (obj_persistent)
    {
        cronometro_play = 0
        cronometro = 1
        if (cronometro_restart == 1)
        {
            minutos = 0
            segundos = 0
            pasos = 0
            cronometro_restart = 0
            cronometro_cp_minutos = 0
            cronometro_cp_segundos = 0
            cronometro_cp_pasos = 0
        }
    }
}

