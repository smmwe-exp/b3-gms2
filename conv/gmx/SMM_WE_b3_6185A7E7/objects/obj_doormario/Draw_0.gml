var drybones_shell, bota_roja, bota_verde;
if ((global.modo_noche == 1) && ((global.bg_level == "ghost") || (global.bg_level == "underwater")))
    draw_sprite(spr_surface_light, 0, x, y)
if (global.apariencia == 0)
{
    if (global.powerup == -77)
    {
        drybones_shell = spr_SMB_kuribo_drybones_mega
        bota_roja = spr_SMB_kuriboshoe2_big
        bota_verde = spr_kuriboshoe_big
    }
    else
    {
        drybones_shell = spr_SMB_kuribo_drybones
        bota_roja = spr_SMB_kuriboshoe2
        bota_verde = spr_SMB_kuriboshoe
    }
}
else if (global.apariencia == 1)
{
    drybones_shell = spr_SMB3_kuribo_drybones
    bota_roja = spr_kuriboshoe2
    bota_verde = spr_SMB_kuriboshoe
}
else
{
    drybones_shell = spr_kuribo_drybones
    bota_roja = spr_SMB_kuriboshoe2
    bota_verde = spr_SMB_kuriboshoe
}
if (global.yoshi > 0)
{
    if (global.yoshi == 1)
    {
        if instance_exists(obj_yoshi_red)
            draw_sprite_ext(spr_yoshi_red, image_index, round(x), (round(y) + 16), direct, 1, 0, c_white, image_alpha)
        else if instance_exists(obj_yoshi2)
        {
            if (obj_yoshi2.mouthholder != -4)
                draw_sprite_ext(spr_yoshi_fm, image_index, round(x), (round(y) + 16), direct, 1, 0, c_white, image_alpha)
            else
                draw_sprite_ext(spr_yoshi, image_index, round(x), (round(y) + 16), direct, 1, 0, c_white, image_alpha)
        }
        draw_sprite_ext(scr_marioride(), image_index, round(x), (y - 9), direct, 1, 0, c_white, image_alpha)
    }
    else if (global.yoshi == 2)
    {
        if instance_exists(obj_kuribo_drybones)
        {
            if (global.powerup == -77)
                draw_sprite_ext(scr_mario_drybones(), 0, round(x), (y - 16), direct, 1, 0, c_white, image_alpha)
            else
                draw_sprite_ext(scr_mario_drybones(), 0, round(x), y, direct, 1, 0, c_white, image_alpha)
            draw_sprite_ext(drybones_shell, 0, round(x), (y + 16), direct, 1, 0, c_white, 1)
        }
        else if instance_exists(obj_kuriboshoe2)
        {
            if (global.powerup == -77)
                draw_sprite_ext(scr_mario_shoe(), 0, round(x), (y - 16), direct, 1, 0, c_white, image_alpha)
            else
                draw_sprite_ext(scr_mario_shoe(), 0, round(x), y, direct, 1, 0, c_white, image_alpha)
            draw_sprite_ext(bota_roja, 0, round(x), (y + 16), direct, 1, 0, c_white, 1)
        }
        else if instance_exists(obj_kuriboshoe)
        {
            if (global.powerup == -77)
                draw_sprite_ext(scr_mario_shoe(), 0, round(x), (y - 16), direct, 1, 0, c_white, image_alpha)
            else
                draw_sprite_ext(scr_mario_shoe(), 0, round(x), y, direct, 1, 0, c_white, image_alpha)
            draw_sprite_ext(bota_verde, 0, round(x), (y + 16), direct, 1, 0, c_white, 1)
        }
    }
}
else
{
    if ((holding == 1) || (holding == 2))
        sprite_index = scr_mariohold()
    else
        sprite_index = scr_marioidle()
    if (global.powerup == 3)
        draw_sprite_ext(spr_cap_stay_start, 0, round(x), y, direct, 1, 0, c_white, image_alpha)
    if (holding == 2)
    {
        draw_sprite(myitem, 0, ((x - 8) + (11 * direct)), my_y)
        draw_sprite_ext(sprite_index, 0, round(x), y, direct, 1, 0, c_white, image_alpha)
    }
    else
        draw_sprite_ext(sprite_index, image_index, round(x), y, direct, 1, 0, c_white, image_alpha)
}

