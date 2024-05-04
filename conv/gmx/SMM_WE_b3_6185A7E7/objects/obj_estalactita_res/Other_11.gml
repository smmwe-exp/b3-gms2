with (instance_create(x, y, obj_smoke))
{
    sprite_index = spr_effect_transform
    image_speed = 0.3
}
global.estalactita = 1
instance_create(x, y, obj_estalactita2_res)
if instance_exists(obj_card_item)
{
    with (obj_card_item)
    {
        if (obj == 521)
        {
            obj = 522
            obj_draw = 139
        }
    }
}
instance_destroy()

