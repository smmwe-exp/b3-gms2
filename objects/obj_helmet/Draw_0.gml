if instance_exists(obj_mario)
{
    if (obj_mario.isflashing == 1)
        shader_set(sha_invert)
    if ((global.apariencia == 0) && (obj_mario.sprite_index == scr_marioclimb()))
        draw_sprite_ext(sprite_index, image_index, (obj_mario.x + (6 * direct)), (obj_mario.y + pos_y), direct, 1, rotacion, c_white, image_alpha)
    else
        draw_sprite_ext(sprite_index, image_index, obj_mario.x, (obj_mario.y + pos_y), direct, 1, rotacion, c_white, image_alpha)
    if (obj_mario.isflashing == 1)
        shader_reset()
}
else if ((fallow != obj_lighting) && instance_exists(fallow))
{
    if ((fallow == obj_player_goal_smb1) && (fallow.sprite_index == scr_marioclimb()))
        draw_sprite_ext(sprite_index, image_index, (fallow.x + (3 * direct)), (fallow.y + pos_y), direct, 1, rotacion, c_white, image_alpha)
    else
        draw_sprite_ext(sprite_index, image_index, fallow.x, (fallow.y + pos_y), direct, 1, rotacion, c_white, image_alpha)
}

