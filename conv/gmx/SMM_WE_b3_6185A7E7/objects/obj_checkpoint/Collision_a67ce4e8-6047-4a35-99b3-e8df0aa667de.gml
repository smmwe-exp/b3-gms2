if (((sprite_index == spr_flag_bowser) || ((sprite_index == spr_SMB3_checkpoint_bowser) || ((sprite_index == spr_SMB_checkpoint_bowser) || (sprite_index == spr_SMB2_checkpoint_bowser)))) && (!audio_is_playing(scr_snd_getcheckpoint())))
{
    if (global.apariencia == 0)
    {
        with (obj_checkpoint)
            sprite_index = spr_SMB_checkpoint_bowser
        sprite_index = spr_SMB_checkpoint_ready
        image_speed = 0.22
    }
    else if (global.apariencia == 1)
    {
        with (obj_checkpoint)
            sprite_index = spr_SMB3_checkpoint_bowser
        sprite_index = spr_SMB3_checkpoint_ready
        image_speed = 0.22
    }
    else if (global.apariencia == 2)
    {
        with (obj_checkpoint)
            sprite_index = spr_flag_bowser
        if (global.jugador == 0)
            sprite_index = spr_flag_move
        else if (global.jugador == 1)
            sprite_index = spr_flag_move_luigi
        else if (global.jugador == 2)
            sprite_index = spr_flag_move_toad
        else if (global.jugador == 3)
            sprite_index = spr_flag_move_toadette
    }
    else if (global.apariencia == 4)
    {
        with (obj_checkpoint)
            sprite_index = spr_SMB2_checkpoint_bowser
        sprite_index = spr_SMB2_checkpoint_ready
        image_speed = 0.22
    }
    global.checkpoint_x = x
    global.checkpoint_y = y
    global.checkpointroom = room
    if (room == rm_guardabot_play)
    {
        obj_persistent.cronometro_cp_minutos = obj_persistent.minutos
        obj_persistent.cronometro_cp_segundos = obj_persistent.segundos
        obj_persistent.cronometro_cp_pasos = obj_persistent.pasos
    }
    event_user(1)
    audio_play_sound(scr_snd_getcheckpoint(), 0, false)
    if (global.apariencia == 2)
    {
        with (instance_create(x, y, obj_spinthump))
        {
            sprite_index = spr_checkpoint_effect
            depth = 9
        }
    }
    if (sprout != 0)
    {
        my_sprite = scr_constant_get_sprite(sprout)
        scr_sprite_make_object((other.x - 8), (other.y + 16), my_sprite)
        sprout = 0
    }
}

