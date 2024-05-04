if (lava == 1)
{
    if (global.apariencia == 0)
    {
        if (global.bg_level == "forest")
            draw_sprite(spr_SMB_purple_cheepcheep, image_index, x, y)
        else
            draw_sprite(spr_SMB3_fire_cheepcheep, image_index, x, y)
    }
    else if (global.apariencia == 1)
    {
        if (global.bg_level == "forest")
            draw_sprite(spr_SMB3_purple_cheepcheep, image_index, x, y)
        else
            draw_sprite(spr_SMB3_fire_cheepcheep, image_index, x, y)
    }
    else if (global.apariencia == 2)
    {
        if (global.bg_level == "forest")
            draw_sprite(spr_purple_cheepcheep, image_index, x, y)
        else
            draw_sprite(spr_fire_cheepcheep, image_index, x, y)
    }
    else if (global.apariencia == 4)
    {
        if (global.bg_level == "forest")
            draw_sprite(spr_SMB2_purple_cheepcheep, image_index, x, y)
        else
            draw_sprite(spr_SMB2_fire_cheepcheep, image_index, x, y)
    }
}
draw_sprite_ext(sprite_index, image_index, round(x), y, direct, image_yscale, 0, c_white, 1)
if (paracaidas == 1)
    draw_sprite_ext(spr_paracaidas, global.apariencia, x, y, 1, 1, image_angle, c_white, 1)
if (wings == 1)
{
    if (direct == 1)
        draw_sprite_ext(sprite_wings, wings_anim, (x - 9), (y - 20), direct, 1, 0, c_white, 1)
    else
        draw_sprite_ext(sprite_wings, wings_anim, (x + 9), (y - 20), direct, 1, 0, c_white, 1)
}

