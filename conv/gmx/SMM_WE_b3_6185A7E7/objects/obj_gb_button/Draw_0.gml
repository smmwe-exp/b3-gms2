draw_self()
draw_set_font(global.font)
draw_text((x + 25), (y + 6), string_hash_to_newline(texto))
if (effect_hover == 1)
    draw_sprite(spr_list_item_hover, 0, x, y)

