if instance_exists(obj_mario)
{
    if (obj_mario.isflashing == 1)
        shader_set(sha_invert)
    draw_sprite_ext(sprite_index, image_index, obj_mario.x, obj_mario.y, obj_mario.direct, 1, 0, c_white, obj_mario.image_alpha)
    if (obj_mario.isflashing == 1)
        shader_reset()
}

