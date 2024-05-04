with (instance_create(x, y, obj_smoke))
{
    sprite_index = spr_effect_transform
    image_speed = 0.3
}
global.spiny = 0
with (instance_create(x, y, obj_spiny_res))
    paracaidas = other.paracaidas
if instance_exists(obj_card_item)
{
    with (obj_card_item)
    {
        if (obj == 459)
        {
            obj = 451
            obj_draw = 127
        }
    }
}
instance_destroy()

