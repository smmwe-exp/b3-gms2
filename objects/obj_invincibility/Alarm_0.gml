audio_stop_sound(scr_snd_starman())
with (obj_levelmanager)
    alarm[0] = 1
with (obj_mario)
{
    isflashing = 0
    invincible = 1
    event_user(6)
}
with (obj_warpmario)
    isflashing = 0
instance_destroy()

