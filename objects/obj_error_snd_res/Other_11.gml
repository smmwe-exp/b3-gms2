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
        global.bombilla = 0
        instance_create(x, y, obj_bombilla_snd_res)
        if instance_exists(obj_card_item)
        {
            with (obj_card_item)
            {
                if (obj == 570)
                {
                    obj = 569
                    obj_draw = 5
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
                if (obj == 570)
                {
                    obj = 571
                    obj_draw = 0
                }
            }
        }
        instance_destroy()
    }
}

