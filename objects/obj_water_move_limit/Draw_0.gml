if instance_exists(obj_water_move)
{
    if (y != obj_water_move.y)
        draw_sprite(spr_water_limit_draw, 0, x, y)
}
draw_self()

