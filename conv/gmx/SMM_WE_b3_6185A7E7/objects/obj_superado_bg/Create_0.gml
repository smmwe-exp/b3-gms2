image_speed = 0.5
dibujar_texto = 0
audio_play_sound(snd_course_clear, 0, false)
with (obj_persistent)
    cronometro = 0
if ((obj_persistent.cronometro_cp_minutos == 0) && ((obj_persistent.cronometro_cp_segundos == 0) && (obj_persistent.cronometro_cp_pasos == 0)))
{
    sum_minutos = obj_persistent.minutos
    sum_segundos = obj_persistent.segundos
    sum_pasos = obj_persistent.pasos
    tiempo = ((((string_add_zeros(sum_minutos, 2) + ":") + string_add_zeros(sum_segundos, 2)) + ":") + string_add_zeros(sum_pasos, 3))
}
else
{
    sum_minutos = (obj_persistent.cronometro_cp_minutos + obj_persistent.minutos)
    sum_segundos = (obj_persistent.cronometro_cp_segundos + obj_persistent.segundos)
    sum_pasos = (obj_persistent.cronometro_cp_pasos + obj_persistent.pasos)
    if (sum_pasos > 999)
    {
        sum_segundos += 1
        sum_pasos -= 999
    }
    if (sum_segundos > 59)
    {
        sum_minutos += 1
        sum_segundos -= 59
    }
    tiempo = ((((string_add_zeros(sum_minutos, 2) + ":") + string_add_zeros(sum_segundos, 2)) + ":") + string_add_zeros(sum_pasos, 3))
}
if ((global.minutos_r == 0) && ((global.segundos_r == 0) && (global.pasos_r == 0)))
{
    new_record = 1
    global.minutos_r = sum_minutos
    global.segundos_r = sum_segundos
    global.pasos_r = sum_pasos
}
else if (sum_minutos < global.minutos_r)
    new_record = 1
else if ((sum_minutos == global.minutos_r) && (sum_segundos < global.segundos_r))
    new_record = 1
else if ((sum_minutos == global.minutos_r) && ((sum_segundos == global.segundos_r) && (sum_pasos < global.pasos_r)))
    new_record = 1
else
    new_record = 0
tiempo_record = ((((string_add_zeros(global.minutos_r, 2) + ":") + string_add_zeros(global.segundos_r, 2)) + ":") + string_add_zeros(global.pasos_r, 3))
global.mariostart = 0
global.onoffblock = 0
global.coins = 0
global.keys = 0
global.checkpoint = -4
global.checkpointroom = -4
global.checkpoint_x = 0
global.checkpoint_y = 0
global.timer = 0
score = 0
if instance_exists(obj_invincibility)
{
    with (obj_invincibility)
        instance_destroy()
}
if (global.modojuego == 1)
{
    if (lives < 10)
        lives += global.liveleves
    global.liveleves = 0
    if (lives > 10)
        lives = 10
}
else if (global.modojuego == 2)
{
    if (lives < 100)
        lives += global.liveleves
    global.liveleves = 0
    if (lives > 100)
        lives = 100
}
if ((obj_persistent.modo_android == 1) && (global.controles_tactiles == 1))
{
    with (obj_persistent)
    {
        event_user(4)
        event_user(5)
    }
}

