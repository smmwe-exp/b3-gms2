with (instance_create(x, y, obj_smoke))
{
    sprite_index = spr_effect_transform
    image_speed = 0.3
}
global.flower = 1
with (instance_create(x, y, obj_superflower_res))
    wings = other.wings
if instance_exists(obj_card_item)
{
    with (obj_card_item)
    {
        if (obj == 479)
        {
            obj = 482
            obj_draw = 62
        }
    }
}
instance_destroy()

