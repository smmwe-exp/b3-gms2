with (instance_create(x, y, obj_smoke))
{
    sprite_index = spr_effect_transform
    image_speed = 0.3
}
global.spring = 0
with (instance_create(x, y, obj_spring_res))
{
    wings = other.wings
    paracaidas = other.paracaidas
}
if instance_exists(obj_card_item)
{
    with (obj_card_item)
    {
        if (obj == 486)
        {
            obj = 485
            obj_draw = 128
        }
    }
}
instance_destroy()

