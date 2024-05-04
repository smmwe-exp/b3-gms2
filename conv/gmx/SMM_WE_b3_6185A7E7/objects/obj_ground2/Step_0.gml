if (global.apariencia == 0)
{
    if (global.modo_noche == 1)
        sprite_index = spr_SMB_ground_solid_night
    else
        sprite_index = spr_SMB_ground_solid
}
else if (global.apariencia == 1)
{
    if (global.modo_noche == 1)
        sprite_index = spr_SMB3_ground_solid_night
    else
        sprite_index = spr_SMB3_ground_solid
}
else if (global.apariencia == 2)
{
    if (global.modo_noche == 1)
        sprite_index = spr_ground_solid_night
    else
        sprite_index = spr_ground_solid
}
else if (global.apariencia == 3)
{
    if (global.modo_noche == 1)
        sprite_index = spr_NSMBU_start_ground_night
    else
        sprite_index = spr_NSMBU_start_ground
}
else if (global.apariencia == 4)
{
    if (global.modo_noche == 1)
        sprite_index = spr_SMB2_start_ground_night
    else
        sprite_index = spr_SMB2_start_ground
}
if (global.bg_level == "ground")
    image_index = 0
else if (global.bg_level == "underground")
    image_index = 1
else if (global.bg_level == "castle")
    image_index = 2
else if (global.bg_level == "underwater")
    image_index = 3
else if (global.bg_level == "ghost")
    image_index = 4
else if ((global.bg_level == "airship") || (global.bg_level == "sky"))
    image_index = 5
else if (global.bg_level == "desert")
    image_index = 6
else if (global.bg_level == "forest")
    image_index = 7
else if (global.bg_level == "snow")
    image_index = 8
if (global.apariencia == 3)
{
    if (global.bg_level == "snow")
    {
        if (global.modo_noche == 1)
            arrow_image = 7
        else
            arrow_image = 6
    }
    else if (global.bg_level == "airship")
        arrow_image = 5
    else if (global.bg_level == "ghost")
        arrow_image = 4
    else if (global.bg_level == "underwater")
        arrow_image = 3
    else if (global.bg_level == "castle")
    {
        if (global.modo_noche == 1)
            arrow_image = 8
        else
            arrow_image = 2
    }
    else if (global.bg_level == "underground")
        arrow_image = 1
    else if (global.modo_noche == 1)
        arrow_image = 9
    else
        arrow_image = 0
}
else if (global.apariencia == 4)
{
    if (global.bg_level == "snow")
    {
        if (global.modo_noche == 1)
            arrow_image = 3
        else
            arrow_image = 2
    }
    else if (global.modo_noche == 1)
        arrow_image = 1
    else
        arrow_image = 0
}
else if (global.bg_level == "snow")
    arrow_image = 1
else
    arrow_image = 0
if (obj_levelmanager.editor == 1)
{
    if (poder_girar == 1)
        anim += 0.06
    else
        anim = 0
    if (crecer_v == 1)
    {
        audio_stop_sound(snd_rieles)
        audio_play_sound(snd_rieles, 0, false)
        size_y++
        y -= 16
        y_draw = y
        can_up = 1
        crecer_v = 0
        alarm[0] = 2
    }
    else if (crecer_v == 2)
    {
        audio_stop_sound(snd_rieles)
        audio_play_sound(snd_rieles, 0, false)
        size_y--
        y += 16
        y_draw = y
        can_up = 1
        crecer_v = 0
        alarm[0] = 2
    }
    if (mouse_check_button(1) && ((obj_editormanager.expand_open == 0) && ((poder_girar == 1) && (crecer_v == 0))))
    {
        if ((mouse_y < y) && ((can_up == 0) && (size_y < (size_limit_y + 1))))
            crecer_v = 1
        else if ((mouse_y > (y + 16)) && ((can_up == 0) && (size_y > 1)))
            crecer_v = 2
    }
    else if (mouse_check_button_released(1) && (obj_levelmanager.editor == 1))
    {
        poder_girar = 0
        draw_p = 0
        obj_cursor.move_tuberia = 0
    }
}

