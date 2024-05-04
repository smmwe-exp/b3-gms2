if (global.apariencia == 0)
    sprite_index = spr_SMB_platform
else if (global.apariencia == 1)
    sprite_index = spr_SMB3_platform
else if (global.apariencia == 2)
    sprite_index = spr_platform
else if (global.apariencia == 4)
{
    if ((global.bg_level == "castle") || ((global.bg_level == "underground") || ((global.bg_level == "ghost") || (global.modo_noche == 1))))
        sprite_index = spr_SMB2_platform_night
    else
        sprite_index = spr_SMB2_platform
}
if (poder_girar == 1)
    anim += 0.06
else
    anim = 0
if (crecer_h == 1)
{
    audio_stop_sound(snd_rieles)
    audio_play_sound(snd_rieles, 0, false)
    size_x++
    image_xscale = size_x
    mask_index = spr_square
    crecer_h = 0
}
else if (crecer_h == 2)
{
    audio_stop_sound(snd_rieles)
    audio_play_sound(snd_rieles, 0, false)
    size_x--
    image_xscale = size_x
    mask_index = spr_square
    crecer_h = 0
}
if (mouse_check_button(1) && ((obj_editormanager.expand_open == 0) && ((poder_girar == 1) && ((crecer_h == 0) && (crecer_v == 0)))))
{
    if ((mouse_x > (x + (16 * size_x))) && ((mouse_x < (x + ((16 * size_x) + 16))) && (size_x < (size_limit_x + 1))))
        crecer_h = 1
    else if ((mouse_x < (x + ((16 * size_x) - 16))) && ((mouse_x > (x + ((16 * size_x) - 32))) && (size_x > 3)))
        crecer_h = 2
}
else if (mouse_check_button_released(1) && ((obj_levelmanager.editor == 1) && (draw_p == 1)))
{
    poder_girar = 0
    draw_p = 0
    obj_cursor.move_tuberia = 0
    audio_play_sound(snd_colocar_objectos, 0, false)
}

