with (instance_create(x, y, obj_smoke))
{
    sprite_index = spr_effect_transform
    image_speed = 0.3
}
global.estalactita = 0
instance_create(x, y, obj_estalactita_res)
if instance_exists(obj_card_item)
{
    with (obj_card_item)
    {
        if (obj == 522)
        {
            obj = 521
            obj_draw = 138
        }
    }
}
instance_destroy()

