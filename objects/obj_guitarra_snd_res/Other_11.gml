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
            if (obj == 586)
            {
                obj = 584
                obj_draw = 34
            }
        }
    }
    instance_destroy()
}
else if (transform == 1)
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
            if (obj == 586)
            {
                obj = 585
                obj_draw = 27
            }
        }
    }
    instance_destroy()
}

