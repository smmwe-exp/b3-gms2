if (anim_mario == 1)
{
    if (direct_t == 0)
        draw_sprite(scr_marioidle(), 0, x, ((y - 48) + anim_m))
    else if (direct_t == 1)
        draw_sprite_ext(scr_mariowalk(), anim_walk, ((x + 24) - anim_m), (y - 17), direct_mario, 1, 1, c_white, 1)
    else if (direct_t == 2)
        draw_sprite(scr_marioidle(), 0, x, (y - anim_m))
    else if (direct_t == 3)
        draw_sprite_ext(scr_mariowalk(), anim_walk, ((x - 24) + anim_m), (y - 17), direct_mario, 1, 1, c_white, 1)
}
event_inherited()
if (drag == 0)
{
    if (draw_p == 1)
        draw_sprite_ext(spr_pipes_move_drag, anim, x, y, 1, 1, rotacion, c_white, 1)
    else if (mouse_up == 1)
        draw_sprite_ext(spr_tuberias_move, 0, x, y, 1, 1, rotacion, c_white, 1)
}

