if (transform != 1)
{
    if (transform == 0)
    {
        with (instance_create(x, y, obj_smoke))
        {
            sprite_index = spr_effect_transform
            image_speed = 0.3
            depth = -8
        }
        global.auh = 0
        instance_create(x, y, obj_auh_snd_res)
        if instance_exists(obj_card_item)
        {
            with (obj_card_item)
            {
                if (obj == 576)
                {
                    obj = 575
                    obj_draw = 14
                }
            }
        }
        instance_destroy()
    }
    else if (transform == 2)
    {
        with (instance_create(x, y, obj_smoke))
        {
            sprite_index = spr_effect_transform
            image_speed = 0.3
            depth = -8
        }
        global.auh = 2
        instance_create(x, y, obj_golpe_gato_snd_res)
        if instance_exists(obj_card_item)
        {
            with (obj_card_item)
            {
                if (obj == 576)
                {
                    obj = 577
                    obj_draw = 6
                }
            }
        }
        instance_destroy()
    }
}

