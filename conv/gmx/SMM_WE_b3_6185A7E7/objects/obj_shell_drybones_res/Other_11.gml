with (instance_create(x, y, obj_smoke))
{
    sprite_index = spr_effect_transform
    image_speed = 0.3
}
global.drybones = 0
with (instance_create(x, y, obj_drybones_res))
    paracaidas = other.paracaidas
if instance_exists(obj_card_item)
{
    with (obj_card_item)
    {
        if (obj == 458)
        {
            obj = 457
            obj_draw = 56
        }
    }
}
instance_destroy()

