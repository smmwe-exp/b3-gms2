with (instance_create(x, y, obj_smoke))
{
    sprite_index = spr_effect_transform
    image_speed = 0.3
}
global.koopa = 1
with (instance_create(x, y, obj_koopa_red_res))
{
    wings = other.wings
    paracaidas = other.paracaidas
}
if instance_exists(obj_card_item)
{
    with (obj_card_item)
    {
        if (obj == 448)
        {
            obj = 449
            obj_draw = 95
        }
    }
}
instance_destroy()

