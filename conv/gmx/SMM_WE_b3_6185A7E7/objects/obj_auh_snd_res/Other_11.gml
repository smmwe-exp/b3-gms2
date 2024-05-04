if (transform != 0)
{
    if (transform == 1)
    {
        with (instance_create(x, y, obj_smoke))
        {
            sprite_index = spr_effect_transform
            image_speed = 0.3
            depth = -8
        }
        global.auh = 1
        instance_create(x, y, obj_uhh_snd_res)
        if instance_exists(obj_card_item)
        {
            with (obj_card_item)
            {
                if (obj == 575)
                {
                    obj = 576
                    obj_draw = 10
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
                if (obj == 575)
                {
                    obj = 577
                    obj_draw = 6
                }
            }
        }
        instance_destroy()
    }
}

