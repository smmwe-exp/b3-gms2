if (room == rm_guardabot_play)
{
    with (obj_persistent)
    {
        cronometro = 0
        cronometro_play = 1
    }
}
if (global.powerup == -50)
{
    audio_stop_sound(obj_levelmanager.levelmusic)
    with (obj_levelmanager)
    {
        levelmusic = levelmusic_temp
        levelmusic_temp = 0
    }
}
with (obj_levelmanager)
{
    event_user(3)
    alarm[2] = 0
    alarm[10] = 1
    speed = 0
}
audio_stop_sound(scr_snd_starman())
audio_stop_sound(snd_pmeter)
audio_stop_sound(snd_clown_damage)
audio_stop_sound(snd_SMB3_clown_damage)
if (global.checkpointroom == -4)
{
    global.pinkcoins_count = 0
    global.pink_coins = 0
    global.pink_coin1_x = 0
    global.pink_coin1_y = 0
    global.pink_coin2_x = 0
    global.pink_coin2_y = 0
    global.pink_coin3_x = 0
    global.pink_coin3_y = 0
    global.pink_coin4_x = 0
    global.pink_coin4_y = 0
    global.pink_coin5_x = 0
    global.pink_coin5_y = 0
    global.pink_coin6_x = 0
    global.pink_coin6_y = 0
    global.pink_coin7_x = 0
    global.pink_coin7_y = 0
    global.pink_coin8_x = 0
    global.pink_coin8_y = 0
    global.pink_coin9_x = 0
    global.pink_coin9_y = 0
    global.pink_coin10_x = 0
    global.pink_coin10_y = 0
}
if ((global.checkpointroom != -4) && instance_exists(obj_checkpoint))
{
    with (obj_checkpoint)
        global.pink_coins = pink_coins
}
if (global.apariencia == 0)
{
    if (global.jugador == 0)
        sprite_index = spr_SMB_mario_dead
    else if (global.jugador == 1)
        sprite_index = spr_SMB_luigi_dead
    else if (global.jugador == 2)
        sprite_index = spr_SMB_toad_dead
    else if (global.jugador == 3)
        sprite_index = spr_SMB_toadette_dead
}
else if (global.apariencia == 1)
{
    if (global.jugador == 0)
        sprite_index = spr_SMB3_mario_dead
    else if (global.jugador == 1)
        sprite_index = spr_SMB3_luigi_dead
    else if (global.jugador == 2)
        sprite_index = spr_SMB3_toad_dead
    else if (global.jugador == 3)
        sprite_index = spr_SMB3_toadette_dead
}
else if (global.apariencia == 2)
{
    if (global.jugador == 1)
        sprite_index = spr_luigi_dead
    else if (global.jugador == 2)
        sprite_index = spr_toad_dead
    else if (global.jugador == 3)
        sprite_index = spr_toadette_dead
}
else if (global.apariencia == 3)
{
    sprite_index = spr_NSMBU_mario_small_dead1
    image_speed = 0.6
}
else if (global.apariencia == 4)
{
    if (global.jugador == 0)
        sprite_index = spr_SMB2_mario_dead
    else if (global.jugador == 1)
        sprite_index = spr_SMB2_luigi_dead
    else if (global.jugador == 2)
        sprite_index = spr_SMB2_toad_dead
    else if (global.jugador == 3)
        sprite_index = spr_SMB2_toadette_dead
}
if (lives > 0)
    lives--
global.died = 1
timeup = 0
global.powerup = 0
if (global.apariencia == 3)
    alarm[0] = 60
else
{
    image_speed = 0
    alarm[0] = 30
}
audio_play_sound(scr_snd_dead(), 1, false)

