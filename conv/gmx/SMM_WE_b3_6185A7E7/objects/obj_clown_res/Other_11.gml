with (instance_create(x, y, obj_smoke))
{
    sprite_index = spr_effect_transform
    image_speed = 0.3
}
global.clown = 1
instance_create(x, y, obj_clown_fire_res)
if instance_exists(obj_card_item)
{
    with (obj_card_item)
    {
        if (obj == 516)
        {
            obj = 517
            obj_draw = 45
        }
    }
}
instance_destroy()

