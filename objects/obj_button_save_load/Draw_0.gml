draw_self()
if (effect_hover == 1)
{
    if (sprite_index == spr_button_save)
        draw_sprite(spr_button_save_hover, 0, x, y)
    else
        draw_sprite(spr_button_load_hover, 0, x, y)
}

