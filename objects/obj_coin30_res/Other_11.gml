if (transform != 1)
{
    if (transform == 0)
    {
        with (instance_create((x + 8), (y + 8), obj_smoke))
        {
            sprite_index = spr_effect_transform
            image_speed = 0.3
        }
        global.coin10 = 0
        instance_create(x, y, obj_coin10_res)
        if instance_exists(obj_card_item)
        {
            with (obj_card_item)
            {
                if (obj == 443)
                {
                    obj = 442
                    obj_draw = 47
                }
            }
        }
        instance_destroy()
    }
    else if (transform == 2)
    {
        with (instance_create((x + 8), (y + 8), obj_smoke))
        {
            sprite_index = spr_effect_transform
            image_speed = 0.3
        }
        global.coin10 = 2
        instance_create(x, y, obj_coin50_res)
        if instance_exists(obj_card_item)
        {
            with (obj_card_item)
            {
                if (obj == 443)
                {
                    obj = 444
                    obj_draw = 49
                }
            }
        }
        instance_destroy()
    }
}

