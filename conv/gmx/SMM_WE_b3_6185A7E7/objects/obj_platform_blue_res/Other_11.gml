with (instance_create(x, y, obj_smoke))
{
    sprite_index = spr_effect_transform
    image_speed = 0.3
}
global.platform = 0
with (instance_create(x, y, obj_platform_res))
    size_x = other.size_x
if instance_exists(obj_card_item)
{
    with (obj_card_item)
    {
        if (obj == 535)
        {
            obj = 534
            obj_draw = 111
        }
    }
}
instance_destroy()

