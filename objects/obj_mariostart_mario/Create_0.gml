image_speed = 0.4
if (global.apariencia == 0)
{
    if (global.jugador == 0)
        sprite_index = spr_SMB_mario_jump_anim
    else if (global.jugador == 1)
        sprite_index = spr_SMB_luigi_jump_anim
    else if (global.jugador == 2)
        sprite_index = spr_SMB_toad_jump_anim
    else if (global.jugador == 3)
        sprite_index = spr_SMB_toadette_jump_anim
}
else if (global.apariencia == 1)
{
    if (global.jugador == 0)
        sprite_index = spr_SMB3_mario_jump_anim
    else if (global.jugador == 1)
        sprite_index = spr_SMB3_luigi_jump_anim
    else if (global.jugador == 2)
        sprite_index = spr_SMB3_toad_jump_anim
    else if (global.jugador == 3)
        sprite_index = spr_SMB3_toadette_jump_anim
}
else if (global.apariencia == 2)
{
    if (global.jugador == 1)
        sprite_index = spr_luigi_jump_anim
    else if (global.jugador == 2)
        sprite_index = spr_toad_jump_anim
    else if (global.jugador == 3)
        sprite_index = spr_toadette_jump_anim
}
audio_play_sound(scr_jump(), 0, false)
draw_lives = 0

