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
        global.fuegos_artificiales = 1
        instance_create(x, y, obj_ovacion_snd_res)
        if instance_exists(obj_card_item)
        {
            with (obj_card_item)
            {
                if (obj == 584)
                {
                    obj = 585
                    obj_draw = 27
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
        global.fuegos_artificiales = 2
        instance_create(x, y, obj_guitarra_snd_res)
        if instance_exists(obj_card_item)
        {
            with (obj_card_item)
            {
                if (obj == 584)
                {
                    obj = 586
                    obj_draw = 30
                }
            }
        }
        instance_destroy()
    }
}

