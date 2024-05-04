with (instance_create(x, y, obj_smoke))
{
    sprite_index = spr_effect_transform
    image_speed = 0.3
}
global.icecoin = 0
with (instance_create(x, y, obj_coin_res))
    wings = other.wings
if instance_exists(obj_card_item)
{
    with (obj_card_item)
    {
        if (obj == 440)
        {
            obj = 439
            obj_draw = 46
        }
    }
}
instance_destroy()

