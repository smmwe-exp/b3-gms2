with (instance_create(x, y, obj_smoke))
{
    sprite_index = spr_effect_transform
    image_speed = 0.3
}
global.plant = 0
with (instance_create(x, y, obj_pplant_res))
{
    wings = other.wings
    paracaidas = other.paracaidas
}
if instance_exists(obj_card_item)
{
    with (obj_card_item)
    {
        if (obj == 493)
        {
            obj = 492
            obj_draw = 116
        }
    }
}
instance_destroy()

