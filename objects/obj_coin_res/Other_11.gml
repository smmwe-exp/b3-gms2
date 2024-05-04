with (instance_create(x, y, obj_smoke))
{
    sprite_index = spr_effect_transform
    image_speed = 0.3
}
global.icecoin = 1
with (instance_create(x, y, obj_icecoin_res))
    wings = other.wings
if instance_exists(obj_card_item)
{
    with (obj_card_item)
    {
        if (obj == 439)
        {
            obj = 440
            obj_draw = 150
        }
    }
}
instance_destroy()

