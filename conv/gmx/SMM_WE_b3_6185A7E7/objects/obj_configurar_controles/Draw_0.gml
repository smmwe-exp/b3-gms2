draw_self()
if (global.idioma == 0)
    sprite_index = spr_settings_button_big
else if (global.idioma == 1)
    sprite_index = spr_settings_button_big_english
if (effect_hover == 1)
    draw_sprite(spr_settings_button_big_hover, 0, x, y)

