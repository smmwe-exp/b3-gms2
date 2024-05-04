if (global.apariencia == 0)
    sprite_index = spr_cards_SMB
else if (global.apariencia == 1)
    sprite_index = spr_cards_SMB3
else if (global.apariencia == 2)
    sprite_index = spr_cards_SMW
else if (global.apariencia == 3)
    sprite_index = spr_cards_NSMBU
else if (global.apariencia == 4)
    sprite_index = spr_cards_SMB2
image_speed = 0
image_index = 0
obj = 433
value = 0
disabled = 0
active = 0
if (obj_panel_circle.type == 0)
    draw_hover = 2784
else if (obj_panel_circle.type == 1)
    draw_hover = 2785
else if (obj_panel_circle.type == 2)
{
    if (obj_panel_circle.sprite_index == spr_panel_circle_7)
        draw_hover = 2790
    else
        draw_hover = 2786
}
else if (obj_panel_circle.type == 3)
{
    if (obj_panel_circle.sprite_index == spr_panel_circle_7)
        draw_hover = 2791
    else
        draw_hover = 2787
}

