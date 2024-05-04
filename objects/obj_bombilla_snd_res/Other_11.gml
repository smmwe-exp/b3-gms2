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
        global.bombilla = 1
        instance_create(x, y, obj_error_snd_res)
        if instance_exists(obj_card_item)
        {
            with (obj_card_item)
            {
                if (obj == 569)
                {
                    obj = 570
                    obj_draw = 2
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
        global.bombilla = 2
        instance_create(x, y, obj_nota_musical_snd_res)
        if instance_exists(obj_card_item)
        {
            with (obj_card_item)
            {
                if (obj == 569)
                {
                    obj = 571
                    obj_draw = 0
                }
            }
        }
        instance_destroy()
    }
}

