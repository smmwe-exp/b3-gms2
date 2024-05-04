if ((global.apariencia != 0) && (global.apariencia != 4))
{
    if (direct == 1)
    {
        with (instance_create((x - 20), y, obj_smoke))
            sprite_index = spr_smoke_bulletbill
    }
    else
    {
        with (instance_create((x + 4), y, obj_smoke))
            sprite_index = spr_smoke_bulletbill
    }
}
alarm[1] = 30

