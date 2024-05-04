if ((cronometro == 1) && ((!instance_exists(obj_menu_pausa)) && ((!instance_exists(obj_player_goal_smb1)) && ((!instance_exists(obj_player_goal_smb3)) && ((!instance_exists(obj_player_goal_smw)) && (!instance_exists(obj_player_goal_smw_castle)))))))
{
    pasos += (1000 / room_speed)
    if (pasos >= 1000)
    {
        segundos++
        pasos = 0
        if (segundos >= 60)
        {
            minutos++
            segundos = 0
        }
    }
}
if gamepad
{
    if ((leftstick[0] == 0) && (gamepad_axis_value(0, gp_axislv) <= -0.5))
    {
        leftstick[0] = 1
        keyboard_key_press(global.arriba)
    }
    else if ((leftstick[0] == 1) && (gamepad_axis_value(0, gp_axislv) > -0.5))
    {
        leftstick[0] = 0
        keyboard_key_release(global.arriba)
    }
    if ((leftstick[1] == 0) && (gamepad_axis_value(0, gp_axislv) >= 0.5))
    {
        leftstick[1] = 1
        keyboard_key_press(global.abajo)
    }
    else if ((leftstick[1] == 1) && (gamepad_axis_value(0, gp_axislv) < 0.5))
    {
        leftstick[1] = 0
        keyboard_key_release(global.abajo)
    }
    if ((leftstick[2] == 0) && (gamepad_axis_value(0, gp_axislh) <= -0.5))
    {
        leftstick[2] = 1
        keyboard_key_press(global.izquierda)
    }
    else if ((leftstick[2] == 1) && (gamepad_axis_value(0, gp_axislh) > -0.5))
    {
        leftstick[2] = 0
        keyboard_key_release(global.izquierda)
    }
    if ((leftstick[3] == 0) && (gamepad_axis_value(0, gp_axislh) >= 0.5))
    {
        leftstick[3] = 1
        keyboard_key_press(global.derecha)
    }
    else if ((leftstick[3] == 1) && (gamepad_axis_value(0, gp_axislh) < 0.5))
    {
        leftstick[3] = 0
        keyboard_key_release(global.derecha)
    }
    if gamepad_button_check_pressed(0, gp_padu)
        keyboard_key_press(global.arriba)
    else if gamepad_button_check_released(0, gp_padu)
        keyboard_key_release(global.arriba)
    if gamepad_button_check_pressed(0, gp_padd)
        keyboard_key_press(global.abajo)
    else if gamepad_button_check_released(0, gp_padd)
        keyboard_key_release(global.abajo)
    if gamepad_button_check_pressed(0, gp_padl)
        keyboard_key_press(global.izquierda)
    else if gamepad_button_check_released(0, gp_padl)
        keyboard_key_release(global.izquierda)
    if gamepad_button_check_pressed(0, gp_padr)
        keyboard_key_press(global.derecha)
    else if gamepad_button_check_released(0, gp_padr)
        keyboard_key_release(global.derecha)
    if gamepad_button_check_pressed(0, gp_face1)
        keyboard_key_press(global.saltar_spin)
    else if gamepad_button_check_released(0, gp_face1)
        keyboard_key_release(global.saltar_spin)
    if gamepad_button_check_pressed(0, gp_face2)
        keyboard_key_press(global.saltar)
    else if gamepad_button_check_released(0, gp_face2)
        keyboard_key_release(global.saltar)
    if gamepad_button_check_pressed(0, gp_face3)
        keyboard_key_press(global.lanzar_agarrar)
    else if gamepad_button_check_released(0, gp_face3)
        keyboard_key_release(global.lanzar_agarrar)
    if gamepad_button_check_pressed(0, gp_face4)
        keyboard_key_press(global.lanzar_agarrar)
    else if gamepad_button_check_released(0, gp_face3)
        keyboard_key_release(global.lanzar_agarrar)
    if gamepad_button_check_pressed(0, gp_start)
        keyboard_key_press(vk_return)
    else if gamepad_button_check_released(0, gp_start)
        keyboard_key_release(vk_return)
    if gamepad_button_check_pressed(0, gp_select)
        keyboard_key_press(vk_space)
    else if gamepad_button_check_released(0, gp_select)
        keyboard_key_release(vk_space)
}

