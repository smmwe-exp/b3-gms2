if (obj_levelmanager.editor == 0)
{
    for (i = 1; i < followers; i += 1)
        draw_sprite(s_chain_a, s_chain_b, oldx[(i * closeness)], oldy[(i * closeness)])
}
draw_sprite_ext(sprite_index, image_index, round(x), y, direct, 1, 0, c_white, 1)

