with (instance_create(x, y, obj_smoke))
{
    sprite_index = spr_effect_transform
    image_speed = 0.3
}
global.clown = 0
instance_create(x, y, obj_clown_res)
if instance_exists(obj_card_item)
{
    with (obj_card_item)
    {
        if (obj == 517)
        {
            obj = 516
            obj_draw = 44
        }
    }
}
instance_destroy()

