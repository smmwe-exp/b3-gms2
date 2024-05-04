if (obj_persistent.vk_movimientos == 1)
{
    if (global.sm4j_style == 0)
    {
        draw_sprite_ext(spr_nkey_pad, 0, (__view_get( e__VW.XView, 0 ) + pad_x), (__view_get( e__VW.YView, 0 ) + pad_y), 1, 1, 0, c_white, 0.6)
        draw_sprite_ext(spr_nkey_pad_move, image_pad, ((__view_get( e__VW.XView, 0 ) + pad_x) + pad_movex), ((__view_get( e__VW.YView, 0 ) + pad_y) + pad_movey), 1, 1, 0, c_white, 0.6)
    }
}

