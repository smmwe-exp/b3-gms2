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
        global.fuegos_artificiales = 0
        instance_create(x, y, obj_fuegos_snd_res)
        if instance_exists(obj_card_item)
        {
            with (obj_card_item)
            {
                if (obj == 585)
                {
                    obj = 584
                    obj_draw = 34
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
                if (obj == 585)
                {
                    obj = 586
                    obj_draw = 30
                }
            }
        }
        instance_destroy()
    }
}

