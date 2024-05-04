if (transform != 2)
{
    if (transform == 0)
    {
        with (instance_create((x + 8), (y + 8), obj_smoke))
        {
            sprite_index = spr_effect_transform
            image_speed = 0.3
            depth = -8
        }
        global.ahh = 0
        instance_create(x, y, obj_ahh_snd_res)
        if instance_exists(obj_card_item)
        {
            with (obj_card_item)
            {
                if (obj == 574)
                {
                    obj = 572
                    obj_draw = 24
                }
            }
        }
        instance_destroy()
    }
    else if (transform == 1)
    {
        with (instance_create((x + 8), (y + 8), obj_smoke))
        {
            sprite_index = spr_effect_transform
            image_speed = 0.3
            depth = -8
        }
        global.ahh = 1
        instance_create(x, y, obj_ubsi_snd_res)
        if instance_exists(obj_card_item)
        {
            with (obj_card_item)
            {
                if (obj == 574)
                {
                    obj = 573
                    obj_draw = 25
                }
            }
        }
        instance_destroy()
    }
}

