if instance_exists(obj_mario)
{
    if ((obj_mario.isflashing == 1) && (global.effect_star == 1))
        shader_set(sha_invert)
    draw_sprite_ext(sprite_index, image_index, obj_mario.x, (obj_mario.y + capa_y), direct, 1, 0, c_white, obj_mario.image_alpha)
    if ((obj_mario.isflashing == 1) && (global.effect_star == 1))
        shader_reset()
}
else if instance_exists(obj_player_goal_smw)
    draw_sprite_ext(sprite_index, image_index, obj_player_goal_smw.x, (obj_player_goal_smw.y + capa_y), direct, 1, 0, c_white, obj_player_goal_smw.image_alpha)

