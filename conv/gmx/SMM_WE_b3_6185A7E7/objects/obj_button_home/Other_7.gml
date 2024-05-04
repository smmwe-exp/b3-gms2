if ((sprite_index == spr_crear_un_nivel) || (sprite_index == spr_create_a_level))
    room_goto(rm_editor)
else if (sprite_index == spr_buttons_DSM_menu)
    room_goto(rm_desafio_super_mario)
if ((sprite_index == spr_buttons_guardabot_menu) || (sprite_index == spr_button_coursebot_menu))
    room_goto(rm_guardabot)

