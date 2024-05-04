if instance_exists(parent)
{
    if (parent.xscale == 1)
    {
        draw_sprite_ext(spr_zappakoopa_lightning_end, -1, xstart, (parent.y + 8), 1, 1, 0, c_white, 1)
        draw_sprite_ext(spr_zappakoopa_lightning_end, -1, x, (parent.y + 8), 1, 1, 0, c_white, 1)
    }
    else if (parent.xscale == -1)
    {
        draw_sprite_ext(spr_zappakoopa_lightning_end, -1, xstart, (parent.y + 8), 1, 1, 0, c_white, 1)
        draw_sprite_ext(spr_zappakoopa_lightning_end, -1, x, (parent.y + 8), 1, 1, 0, c_white, 1)
    }
}

