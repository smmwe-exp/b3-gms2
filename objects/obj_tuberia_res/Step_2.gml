var mario_o, calculo_x, calculo_y;
if (global.apariencia == 0)
{
    s_tuberia_0 = spr_SMB_tuberias
    s_tuberia_1 = spr_SMB_tuberias_1
    s_tuberia_2 = spr_SMB_tuberias_2
    s_tuberia_3 = spr_SMB_tuberias_3
    s_tuberia_4 = spr_SMB_tuberias_4
    s_tuberia_5 = spr_SMB_tuberias_5
    s_tuberia_6 = spr_SMB_tuberias_6
}
else if (global.apariencia == 1)
{
    if ((global.bg_level == "castle") || ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1))))
    {
        s_tuberia_0 = spr_SMB3_tuberias_night
        s_tuberia_1 = spr_SMB3_tuberias_night_1
        s_tuberia_2 = spr_SMB3_tuberias_night_2
        s_tuberia_3 = spr_SMB3_tuberias_night_3
        s_tuberia_4 = spr_SMB3_tuberias_night_4
        s_tuberia_5 = spr_SMB3_tuberias_night_5
        s_tuberia_6 = spr_SMB3_tuberias_night_6
    }
    else
    {
        s_tuberia_0 = spr_SMB3_tuberias
        s_tuberia_1 = spr_SMB3_tuberias_1
        s_tuberia_2 = spr_SMB3_tuberias_2
        s_tuberia_3 = spr_SMB3_tuberias_3
        s_tuberia_4 = spr_SMB3_tuberias_4
        s_tuberia_5 = spr_SMB3_tuberias_5
        s_tuberia_6 = spr_SMB3_tuberias_6
    }
}
else if (global.apariencia == 2)
{
    s_tuberia_0 = spr_tuberias
    s_tuberia_1 = spr_tuberias_1
    s_tuberia_2 = spr_tuberias_2
    s_tuberia_3 = spr_tuberias_3
    s_tuberia_4 = spr_tuberias_4
    s_tuberia_5 = spr_tuberias_5
    s_tuberia_6 = spr_tuberias_6
}
else if (global.apariencia == 3)
{
    if ((global.modo_noche == 1) && ((global.bg_level != "ghost") && ((global.bg_level != "underground") && (global.bg_level != "castle"))))
    {
        s_tuberia_0 = spr_NSMBU_tuberias_night
        s_tuberia_1 = spr_NSMBU_tuberias_night_1
        s_tuberia_2 = spr_NSMBU_tuberias_night_2
        s_tuberia_3 = spr_NSMBU_tuberias_night_3
        s_tuberia_4 = spr_NSMBU_tuberias_night_4
        s_tuberia_5 = spr_NSMBU_tuberias_night_5
        s_tuberia_6 = spr_NSMBU_tuberias_night_6
    }
    else
    {
        s_tuberia_0 = spr_NSMBU_tuberias
        s_tuberia_1 = spr_NSMBU_tuberias_1
        s_tuberia_2 = spr_NSMBU_tuberias_2
        s_tuberia_3 = spr_NSMBU_tuberias_3
        s_tuberia_4 = spr_NSMBU_tuberias_4
        s_tuberia_5 = spr_NSMBU_tuberias_5
        s_tuberia_6 = spr_NSMBU_tuberias_6
    }
}
else if (global.apariencia == 4)
{
    if ((global.bg_level == "castle") || ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1))))
    {
        s_tuberia_0 = spr_SMB2_tuberias_night
        s_tuberia_1 = spr_SMB2_tuberias_night_1
        s_tuberia_2 = spr_SMB2_tuberias_night_2
        s_tuberia_3 = spr_SMB2_tuberias_night_3
        s_tuberia_4 = spr_SMB2_tuberias_night_4
        s_tuberia_5 = spr_SMB2_tuberias_night_5
        s_tuberia_6 = spr_SMB2_tuberias_night_6
    }
    else
    {
        s_tuberia_0 = spr_SMB2_tuberias
        s_tuberia_1 = spr_SMB2_tuberias_1
        s_tuberia_2 = spr_SMB2_tuberias_2
        s_tuberia_3 = spr_SMB2_tuberias_3
        s_tuberia_4 = spr_SMB2_tuberias_4
        s_tuberia_5 = spr_SMB2_tuberias_5
        s_tuberia_6 = spr_SMB2_tuberias_6
    }
}
else
{
    s_tuberia_0 = spr_tuberias
    s_tuberia_1 = spr_tuberias_1
    s_tuberia_2 = spr_tuberias_2
    s_tuberia_3 = spr_tuberias_3
    s_tuberia_4 = spr_tuberias_4
    s_tuberia_5 = spr_tuberias_5
    s_tuberia_6 = spr_tuberias_6
}
image_index = color
grid_selected = mask_index
if (draw_p == 0)
{
    if (size == 0)
        sprite_index = s_tuberia_0
    else if (size == 1)
        sprite_index = s_tuberia_1
    else if (size == 2)
        sprite_index = s_tuberia_2
    else if (size == 3)
        sprite_index = s_tuberia_3
    else if (size == 4)
        sprite_index = s_tuberia_4
    else if (size == 5)
        sprite_index = s_tuberia_5
    else if (size == 6)
        sprite_index = s_tuberia_6
}
if (negativo == 1)
{
    if (rotacion >= (R + 90))
    {
        rotacion = (R + 90)
        R = rotacion
        negativo = 0
        if (direct_t == 0)
            direct_t = 3
        else
            direct_t--
        if ((direct_t == 3) || (direct_t == 2))
            s_scalex = -1
        else
            s_scalex = 1
        mask_index = scr_mask_tuberias(direct_t, size)
        grid_selected = mask_index
        if (!mouse_check_button(1))
            poder_girar = 0
    }
    else
        rotacion += 10
}
else if (positivo == 1)
{
    if (rotacion <= (R - 90))
    {
        rotacion = (R - 90)
        R = rotacion
        positivo = 0
        if (direct_t == 3)
            direct_t = 0
        else
            direct_t++
        if ((direct_t == 3) || (direct_t == 2))
            s_scalex = -1
        else
            s_scalex = 1
        mask_index = scr_mask_tuberias(direct_t, size)
        grid_selected = mask_index
        if (!mouse_check_button(1))
            poder_girar = 0
    }
    else
        rotacion -= 10
}
else if (crecer == 1)
{
    audio_stop_sound(snd_rieles)
    audio_play_sound(snd_rieles, 0, false)
    if (direct_t == 0)
    {
        y -= 16
        y_draw -= 16
        size++
    }
    else if (direct_t == 1)
    {
        x += 16
        x_draw += 16
        size++
    }
    else if (direct_t == 2)
    {
        y += 16
        y_draw += 16
        size++
    }
    else if (direct_t == 3)
    {
        x -= 16
        x_draw -= 16
        size++
    }
    if (size == 0)
        sprite_index = s_tuberia_0
    else if (size == 1)
        sprite_index = s_tuberia_1
    else if (size == 2)
        sprite_index = s_tuberia_2
    else if (size == 3)
        sprite_index = s_tuberia_3
    else if (size == 4)
        sprite_index = s_tuberia_4
    else if (size == 5)
        sprite_index = s_tuberia_5
    else if (size == 6)
        sprite_index = s_tuberia_6
    mask_index = scr_mask_tuberias(direct_t, size)
    grid_selected = mask_index
    crecer = 0
}
else if (crecer == 2)
{
    audio_stop_sound(snd_rieles)
    audio_play_sound(snd_rieles, 0, false)
    if (direct_t == 0)
    {
        y += 16
        y_draw += 16
        size--
    }
    else if (direct_t == 1)
    {
        x -= 16
        x_draw -= 16
        size--
    }
    else if (direct_t == 2)
    {
        y -= 16
        y_draw -= 16
        size--
    }
    else if (direct_t == 3)
    {
        x += 16
        x_draw += 16
        size--
    }
    if (size == 0)
        sprite_index = s_tuberia_0
    else if (size == 1)
        sprite_index = s_tuberia_1
    else if (size == 2)
        sprite_index = s_tuberia_2
    else if (size == 3)
        sprite_index = s_tuberia_3
    else if (size == 4)
        sprite_index = s_tuberia_4
    else if (size == 5)
        sprite_index = s_tuberia_5
    else if (size == 6)
        sprite_index = s_tuberia_6
    mask_index = scr_mask_tuberias(direct_t, size)
    grid_selected = mask_index
    crecer = 0
}
if (mouse_check_button(1) && ((obj_editormanager.expand_open == 0) && ((poder_girar == 1) && ((positivo == 0) && ((negativo == 0) && (crecer == 0))))))
{
    if (direct_t == 0)
    {
        if ((mouse_x > (x + 16)) && ((mouse_x < (x + 48)) && ((mouse_y > y) && (mouse_y < (y + 16)))))
            positivo = 1
        else if ((mouse_x > (x - 48)) && ((mouse_x < (x - 16)) && ((mouse_y > y) && (mouse_y < (y + 16)))))
            negativo = 1
        if ((mouse_x > (x - 7)) && ((mouse_x < (x + 7)) && ((mouse_y > (y - 32)) && ((mouse_y < (y - 16)) && (size < 6)))))
            crecer = 1
        else if ((mouse_x > (x - 7)) && ((mouse_x < (x + 7)) && ((mouse_y > y) && ((mouse_y < (y + 16)) && (size > 0)))))
            crecer = 2
    }
    else if (direct_t == 1)
    {
        if ((mouse_x > (x - 16)) && ((mouse_x < x) && ((mouse_y > (y + 16)) && (mouse_y < (y + 48)))))
            positivo = 1
        else if ((mouse_x > (x - 16)) && ((mouse_x < x) && ((mouse_y > (y - 48)) && (mouse_y < (y - 16)))))
            negativo = 1
        else if ((mouse_x > (x + 16)) && ((mouse_x < (x + 32)) && ((mouse_y > (y - 7)) && ((mouse_y < (y + 7)) && (size < 6)))))
            crecer = 1
        else if ((mouse_x > (x - 16)) && ((mouse_x < x) && ((mouse_y > (y - 7)) && ((mouse_y < (y + 7)) && (size > 0)))))
            crecer = 2
    }
    else if (direct_t == 2)
    {
        if ((mouse_x > (x + 16)) && ((mouse_x < (x + 48)) && ((mouse_y > (y - 16)) && (mouse_y < y))))
            negativo = 1
        else if ((mouse_x > (x - 48)) && ((mouse_x < (x - 16)) && ((mouse_y > (y - 16)) && (mouse_y < y))))
            positivo = 1
        else if ((mouse_x > (x - 7)) && ((mouse_x < (x + 7)) && ((mouse_y > (y + 16)) && ((mouse_y < (y + 32)) && (size < 6)))))
            crecer = 1
        else if ((mouse_x > (x - 7)) && ((mouse_x < (x + 7)) && ((mouse_y > (y - 16)) && ((mouse_y < y) && (size > 0)))))
            crecer = 2
    }
    else if (direct_t == 3)
    {
        if ((mouse_x > x) && ((mouse_x < (x + 16)) && ((mouse_y > (y - 48)) && (mouse_y < (y - 16)))))
            positivo = 1
        else if ((mouse_x > x) && ((mouse_x < (x + 16)) && ((mouse_y > (y + 16)) && (mouse_y < (y + 48)))))
            negativo = 1
        else if ((mouse_x > (x - 32)) && ((mouse_x < (x - 16)) && ((mouse_y > (y - 7)) && ((mouse_y < (y + 7)) && (size < 6)))))
            crecer = 1
        else if ((mouse_x > x) && ((mouse_x < (x + 16)) && ((mouse_y > (y - 7)) && ((mouse_y < (y + 7)) && (size > 0)))))
            crecer = 2
    }
}
else if (mouse_check_button_released(1) && ((obj_levelmanager.editor == 1) && ((positivo == 0) && (negativo == 0))))
{
    poder_girar = 0
    positivo = 0
    negativo = 0
}
if (mouse_check_button_released(1) && ((obj_levelmanager.editor == 1) && (draw_p == 1)))
{
    draw_p = 0
    obj_cursor.move_tuberia = 0
    pos_cal = 1
    alarm[5] = 15
    audio_play_sound(snd_colocar_objectos, 0, false)
}
if (poder_girar == 1)
    anim += 0.06
else
    anim = 0
if ((anim_mario == 1) && (ready == 1))
{
    if (direct_t == 2)
    {
        if (anim_m >= 16)
        {
            anim_m = 16
            anim_walk = 0
            ready = 2
            global.instance_deactivate = 0
            alarm[2] = 12
            alarm[3] = 13
        }
        else
        {
            anim_m += 0.5
            anim_walk += 0.15
        }
    }
    else if (anim_m >= 32)
    {
        anim_m = 32
        anim_walk = 0
        ready = 2
        global.instance_deactivate = 0
        alarm[2] = 12
        alarm[3] = 13
    }
    else
    {
        anim_m += 0.6
        anim_walk += 0.15
        if (direct_t == 1)
            direct_mario = -1
        else
            direct_mario = 1
    }
}
if ((anim_mario == 1) && (ready == 3))
{
    if (anim_m <= 0)
    {
        anim_mario = 0
        anim_m = 0
        anim_walk = 0
        ready = 0
        if (direct_t == 0)
        {
            mario_o = instance_create(x, (y - 48), obj_mario_editor)
            mario_o.direct = 1
            calculo_x = (x - __view_get( e__VW.XView, 0 ))
            calculo_y = ((y - 48) - __view_get( e__VW.YView, 0 ))
            mario_o.x_start = calculo_x
            mario_o.y_start = calculo_y
        }
        else if (direct_t == 1)
        {
            mario_o = instance_create((x + 24), (y - 16), obj_mario_editor)
            mario_o.direct = 1
            calculo_x = ((x + 24) - __view_get( e__VW.XView, 0 ))
            calculo_y = ((y - 16) - __view_get( e__VW.YView, 0 ))
            mario_o.x_start = calculo_x
            mario_o.y_start = calculo_y
        }
        else if (direct_t == 2)
        {
            mario_o = instance_create(x, y, obj_mario_editor)
            mario_o.direct = 1
            calculo_x = (x - __view_get( e__VW.XView, 0 ))
            calculo_y = (y - __view_get( e__VW.YView, 0 ))
            mario_o.x_start = calculo_x
            mario_o.y_start = calculo_y
        }
        else if (direct_t == 3)
        {
            mario_o = instance_create((x - 24), (y - 16), obj_mario_editor)
            mario_o.direct = -1
            calculo_x = ((x - 24) - __view_get( e__VW.XView, 0 ))
            calculo_y = ((y - 16) - __view_get( e__VW.YView, 0 ))
            mario_o.x_start = calculo_x
            mario_o.y_start = calculo_y
        }
        obj_editormanager.expand_open = 0
    }
    else
    {
        if (direct_t == 3)
            direct_mario = -1
        else
            direct_mario = 1
        anim_m -= 1
        anim_walk += 0.15
    }
}

