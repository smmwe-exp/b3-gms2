if (global.apariencia == 0)
{
    if (sprite_index == spr_SMB_checkpoint_ready)
    {
        sprite_index = spr_SMB_checkpoint
        image_speed = 0
        if (global.jugador == 0)
            image_index = 0
        else if (global.jugador == 1)
            image_index = 1
        else if (global.jugador == 2)
            image_index = 2
        else if (global.jugador == 3)
            image_index = 3
    }
}
else if (global.apariencia == 1)
{
    if (sprite_index == spr_SMB3_checkpoint_ready)
    {
        sprite_index = spr_SMB3_checkpoint
        image_speed = 0
        if (global.jugador == 0)
            image_index = 0
        else if (global.jugador == 1)
            image_index = 1
        else if (global.jugador == 2)
            image_index = 2
        else if (global.jugador == 3)
            image_index = 3
    }
}
else if (global.apariencia == 2)
{
    if (sprite_index == spr_flag_move)
        sprite_index = spr_flag_mario
    else if (sprite_index == spr_flag_move_luigi)
        sprite_index = spr_flag_luigi
    else if (sprite_index == spr_flag_move_toad)
        sprite_index = spr_flag_toad
    else if (sprite_index == spr_flag_move_toadette)
        sprite_index = spr_flag_toadette
}
else if (global.apariencia == 4)
{
    if (sprite_index == spr_SMB2_checkpoint_ready)
    {
        sprite_index = spr_SMB2_checkpoint
        image_speed = 0
        if (global.jugador == 0)
            image_index = 0
        else if (global.jugador == 1)
            image_index = 1
        else if (global.jugador == 2)
            image_index = 2
        else if (global.jugador == 3)
            image_index = 3
    }
}

