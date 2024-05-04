if ((sprite_index == spr_coin) || ((sprite_index == spr_SMB3_coin) || ((sprite_index == spr_SMB3_coin_night) || ((sprite_index == spr_SMB3_coin_dark) || ((sprite_index == spr_SMB_coin) || ((sprite_index == spr_SMB_coin_night) || (sprite_index == spr_SMB_coin_dark)))))))
{
    audio_stop_sound(scr_snd_coin())
    audio_play_sound(scr_snd_coin(), 0, false)
    global.coins++
    with (instance_create(x, y, obj_score))
        event_user(0)
    if (global.apariencia != 0)
        instance_create(x, y, obj_sparkles_coin)
    instance_destroy()
}
else
{
    audio_play_sound(snd_acecoin, 0, false)
    if (sprite_index == spr_coin_10)
        global.coins += 10
    else if (sprite_index == spr_coin_30)
        global.coins += 30
    else if (sprite_index == spr_coin_50)
        global.coins += 50
    vspeed = -3
    gravity = 0.2
    with (instance_create(x, y, obj_score))
        event_user(0)
    instance_create((x + 8), y, obj_sparkles_coin)
    image_speed = 0.9
    alarm[0] = 15
}

