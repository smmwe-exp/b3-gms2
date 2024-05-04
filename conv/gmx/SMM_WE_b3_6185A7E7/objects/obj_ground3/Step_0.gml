if (global.apariencia == 0)
{
    if (global.modo_noche == 1)
        sprite_index = spr_SMB_ground3_solid_night
    else
        sprite_index = spr_SMB_ground3_solid
}
else if (global.apariencia == 1)
{
    if (global.modo_noche == 1)
        sprite_index = spr_SMB3_ground3_solid_night
    else
        sprite_index = spr_SMB3_ground3_solid
}
else if (global.apariencia == 2)
{
    if (global.modo_noche == 1)
        sprite_index = spr_ground3_solid_night
    else
        sprite_index = spr_ground3_solid
}
else if (global.apariencia == 3)
{
    if (global.modo_noche == 1)
        sprite_index = spr_NSMBU_goal_ground_night
    else
        sprite_index = spr_NSMBU_goal_ground
}
else if (global.apariencia == 4)
{
    if (global.modo_noche == 1)
        sprite_index = spr_SMB2_goal_ground_night
    else
        sprite_index = spr_SMB2_goal_ground
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
if (obj_levelmanager.editor == 1)
{
    if (poder_girar == 1)
        anim += 0.06
    else
        anim = 0
    if (crecer_h == 1)
    {
        audio_stop_sound(snd_rieles)
        audio_play_sound(snd_rieles, 0, false)
        x += 16
        room_width += 16
        can_up = 1
        crecer_h = 0
        alarm[0] = 2
    }
    else if (crecer_h == 2)
    {
        audio_stop_sound(snd_rieles)
        audio_play_sound(snd_rieles, 0, false)
        x -= 16
        room_width -= 16
        can_up = 1
        crecer_h = 0
        alarm[0] = 2
    }
    if (crecer_v == 1)
    {
        audio_stop_sound(snd_rieles)
        audio_play_sound(snd_rieles, 0, false)
        size_y++
        y -= 16
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
        can_up = 1
        crecer_v = 0
        alarm[0] = 2
    }
    if (mouse_check_button(1) && ((obj_editormanager.expand_open == 0) && ((poder_girar == 1) && ((crecer_h == 0) && (crecer_v == 0)))))
    {
        if ((mouse_x > (x + 16)) && ((can_up == 0) && (room_width < 7680)))
            crecer_h = 1
        else if ((mouse_x < x) && ((can_up == 0) && (((room_width > 384) && ((global.bg_level != "castle") && (obj_editormanager.zoom == 0))) || (((room_width > 496) && ((global.bg_level == "castle") && (obj_editormanager.zoom == 0))) || (((room_width > 768) && ((global.bg_level != "castle") && (obj_editormanager.zoom != 0))) || ((room_width > 992) && ((global.bg_level == "castle") && (obj_editormanager.zoom != 0))))))))
            crecer_h = 2
        if ((mouse_y < y) && ((size_y < (size_limit_y + 1)) && (can_up == 0)))
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

