draw_self()
if (room == rm_title)
{
    if (global.jugador == 0)
        jugador = spr_SMB_mario_small_idle
    else if (global.jugador == 1)
        jugador = spr_SMB_luigi_small_idle
    else if (global.jugador == 2)
        jugador = spr_SMB_toad_small_idle
    if (global.jugador == 3)
        jugador = 213
    draw_sprite(spr_display_logo, 0, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ))
    draw_sprite(spr_smmwe_logo, anim, (__view_get( e__VW.XView, 0 ) + 213), (__view_get( e__VW.YView, 0 ) + 90))
    draw_sprite_ext(jugador, 0, (__view_get( e__VW.XView, 0 ) + 72), (__view_get( e__VW.YView, 0 ) + 152), 1, 1, 0, c_white, image_alpha)
}

