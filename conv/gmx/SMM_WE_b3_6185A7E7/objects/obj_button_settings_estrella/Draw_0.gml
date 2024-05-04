draw_self()
if (global.idioma == 0)
    sprite_index = spr_settings_button_activate
else if (global.idioma == 1)
    sprite_index = spr_settings_button_activate_english
if (effect_hover == 1)
    draw_sprite(spr_settings_button_activate_hover, 0, x, y)

