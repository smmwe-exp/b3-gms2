if (room == global.checkpointroom)
{
    if ((x == global.checkpoint_x) && (y == global.checkpoint_y))
    {
        if (global.apariencia == 0)
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
        else if (global.apariencia == 1)
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
        else if (global.apariencia == 2)
        {
            if (global.jugador == 0)
                sprite_index = spr_flag_mario
            else if (global.jugador == 1)
                sprite_index = spr_flag_luigi
            else if (global.jugador == 2)
                sprite_index = spr_flag_toad
            else if (global.jugador == 3)
                sprite_index = spr_flag_toadette
        }
    }
}

