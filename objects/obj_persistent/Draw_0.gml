if background_exists(back)
{
    draw_enable_alphablend(0)
    draw_background(back, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ))
    draw_enable_alphablend(1)
}
draw_set_font(global.font)
draw_text(__view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), string_hash_to_newline(message))
if showfps
{
    draw_set_halign(fa_right)
    draw_text(((__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )) - 2), (__view_get( e__VW.YView, 0 ) + 206), string_hash_to_newline(((("FPS: " + string(fps)) + " MAX FPS: ") + string(fps_real))))
    draw_set_halign(fa_left)
}
if (vk_movimientos == 1)
{
    if (global.sm4j_style == 1)
    {
        if keyboard_check(global.arriba)
            draw_sprite_ext(spr_keyup_sm4j, 1, (__view_get( e__VW.XView, 0 ) + 32), (__view_get( e__VW.YView, 0 ) + 80), 1, 1, 0, c_white, 0.2)
        else
            draw_sprite_ext(spr_keyup_sm4j, 0, (__view_get( e__VW.XView, 0 ) + 32), (__view_get( e__VW.YView, 0 ) + 80), 1, 1, 0, c_white, 0.2)
        if keyboard_check(global.abajo)
            draw_sprite_ext(spr_keydown_sm4j, 1, (__view_get( e__VW.XView, 0 ) + 32), (__view_get( e__VW.YView, 0 ) + 178), 1, 1, 0, c_white, 0.2)
        else
            draw_sprite_ext(spr_keydown_sm4j, 0, (__view_get( e__VW.XView, 0 ) + 32), (__view_get( e__VW.YView, 0 ) + 178), 1, 1, 0, c_white, 0.2)
        if keyboard_check(global.izquierda)
            draw_sprite_ext(spr_keyleft_sm4j, 1, (__view_get( e__VW.XView, 0 ) - 34), (__view_get( e__VW.YView, 0 ) + 144), 1, 1, 0, c_white, 0.2)
        else
            draw_sprite_ext(spr_keyleft_sm4j, 0, (__view_get( e__VW.XView, 0 ) - 34), (__view_get( e__VW.YView, 0 ) + 144), 1, 1, 0, c_white, 0.2)
        if keyboard_check(global.derecha)
            draw_sprite_ext(spr_keyright_sm4j, 1, (__view_get( e__VW.XView, 0 ) + 66), (__view_get( e__VW.YView, 0 ) + 144), 1, 1, 0, c_white, 0.2)
        else
            draw_sprite_ext(spr_keyright_sm4j, 0, (__view_get( e__VW.XView, 0 ) + 66), (__view_get( e__VW.YView, 0 ) + 144), 1, 1, 0, c_white, 0.2)
    }
    else if (global.sm4j_style == 2)
    {
        draw_sprite_ext(spr_virtual_key_up, 0, (__view_get( e__VW.XView, 0 ) + 32), (__view_get( e__VW.YView, 0 ) + 118), 1, 1, 0, c_white, 0.6)
        draw_sprite_ext(spr_virtual_key_don, 0, (__view_get( e__VW.XView, 0 ) + 34), (__view_get( e__VW.YView, 0 ) + 182), 1, 1, 0, c_white, 0.6)
        draw_sprite_ext(spr_virtual_key_left, 0, (__view_get( e__VW.XView, 0 ) + 2), (__view_get( e__VW.YView, 0 ) + 150), 1, 1, 0, c_white, 0.6)
        draw_sprite_ext(spr_virtual_key_right, 0, (__view_get( e__VW.XView, 0 ) + 66), (__view_get( e__VW.YView, 0 ) + 150), 1, 1, 0, c_white, 0.6)
    }
}
if (vk_saltos == 1)
{
    if (global.sm4j_style == 1)
    {
        if keyboard_check(global.saltar)
            draw_sprite_ext(spr_key_a_sm4j, 1, (__view_get( e__VW.XView, 0 ) + 320), (__view_get( e__VW.YView, 0 ) + 158), 1, 1, 0, c_white, 0.2)
        else
            draw_sprite_ext(spr_key_a_sm4j, 0, (__view_get( e__VW.XView, 0 ) + 320), (__view_get( e__VW.YView, 0 ) + 158), 1, 1, 0, c_white, 0.2)
        if keyboard_check(global.saltar_spin)
            draw_sprite_ext(spr_key_al_sm4j, 1, (__view_get( e__VW.XView, 0 ) + 320), (__view_get( e__VW.YView, 0 ) + 30), 1, 1, 0, c_white, 0.2)
        else
            draw_sprite_ext(spr_key_al_sm4j, 0, (__view_get( e__VW.XView, 0 ) + 320), (__view_get( e__VW.YView, 0 ) + 30), 1, 1, 0, c_white, 0.2)
        if keyboard_check(global.lanzar_agarrar)
            draw_sprite_ext(spr_keyu_b_sm4j, 1, (__view_get( e__VW.XView, 0 ) + 256), (__view_get( e__VW.YView, 0 ) + 158), 1, 1, 0, c_white, 0.2)
        else
            draw_sprite_ext(spr_keyu_b_sm4j, 0, (__view_get( e__VW.XView, 0 ) + 256), (__view_get( e__VW.YView, 0 ) + 158), 1, 1, 0, c_white, 0.2)
        if (global.key_br == 1)
            draw_sprite_ext(spr_key_br_sm4j, 1, (__view_get( e__VW.XView, 0 ) + 320), (__view_get( e__VW.YView, 0 ) + 94), 1, 1, 0, c_white, 0.2)
        else
            draw_sprite_ext(spr_key_br_sm4j, 0, (__view_get( e__VW.XView, 0 ) + 320), (__view_get( e__VW.YView, 0 ) + 94), 1, 1, 0, c_white, 0.2)
        if ((room != rm_editor) && (room != rm_title))
            draw_sprite_ext(spr_key_p_sm4j, 0, (__view_get( e__VW.XView, 0 ) + 336), __view_get( e__VW.YView, 0 ), 1, 1, 0, c_white, 0.2)
    }
    else
    {
        if keyboard_check(global.saltar)
            draw_sprite_ext(spr_nkey_a, 1, (__view_get( e__VW.XView, 0 ) + 300), (__view_get( e__VW.YView, 0 ) + 158), 1, 1, 0, c_white, 0.6)
        else
            draw_sprite_ext(spr_nkey_a, 0, (__view_get( e__VW.XView, 0 ) + 300), (__view_get( e__VW.YView, 0 ) + 158), 1, 1, 0, c_white, 0.6)
        if keyboard_check(global.saltar_spin)
            draw_sprite_ext(spr_nkey_z, 1, (__view_get( e__VW.XView, 0 ) + 340), (__view_get( e__VW.YView, 0 ) + 176), 1, 1, 0, c_white, 0.6)
        else
            draw_sprite_ext(spr_nkey_z, 0, (__view_get( e__VW.XView, 0 ) + 340), (__view_get( e__VW.YView, 0 ) + 176), 1, 1, 0, c_white, 0.6)
        if keyboard_check(global.lanzar_agarrar)
            draw_sprite_ext(spr_nkey_b, 1, (__view_get( e__VW.XView, 0 ) + 337), (__view_get( e__VW.YView, 0 ) + 35), 1, 1, 0, c_white, 0.6)
        else
            draw_sprite_ext(spr_nkey_b, 0, (__view_get( e__VW.XView, 0 ) + 337), (__view_get( e__VW.YView, 0 ) + 35), 1, 1, 0, c_white, 0.6)
        if ((room != rm_editor) && (room != rm_title))
            draw_sprite(spr_nkey_pause, 0, (__view_get( e__VW.XView, 0 ) + 184), (__view_get( e__VW.YView, 0 ) + 193))
    }
}

