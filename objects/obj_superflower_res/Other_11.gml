with (instance_create(x, y, obj_smoke))
{
    sprite_index = spr_effect_transform
    image_speed = 0.3
}
global.flower = 0
with (instance_create(x, y, obj_fireflower_res))
    wings = other.wings
if instance_exists(obj_card_item)
{
    with (obj_card_item)
    {
        if (obj == 482)
        {
            obj = 479
            obj_draw = 61
        }
    }
}
instance_destroy()

