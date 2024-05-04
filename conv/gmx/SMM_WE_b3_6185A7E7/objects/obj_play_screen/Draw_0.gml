if (object_index == obj_play_screen)
{
    draw_sprite_ext(spr_creator_top, 0, (__view_get( e__VW.XView, 0 ) + 197), (__view_get( e__VW.YView, 0 ) + 130), 1, 1, rot2, c_white, 1)
    draw_sprite_ext(sprite_index, global.idioma, (__view_get( e__VW.XView, 0 ) + 197), (__view_get( e__VW.YView, 0 ) + 130), 1, 1, rot1, c_white, 1)
}
else
{
    draw_sprite_ext(spr_creator_top, 0, (__view_get( e__VW.XView, 0 ) + 135), (__view_get( e__VW.YView, 0 ) + 130), 1, 1, rot2, c_white, 1)
    draw_sprite_ext(sprite_index, global.idioma, (__view_get( e__VW.XView, 0 ) + 135), (__view_get( e__VW.YView, 0 ) + 130), 1, 1, rot1, c_white, 1)
}

