with (instance_create(x, y, obj_smoke))
{
    sprite_index = spr_effect_transform
    image_speed = 0.3
}
global.spring = 1
with (instance_create(x, y, obj_spring_land_res))
{
    wings = other.wings
    paracaidas = other.paracaidas
}
if instance_exists(obj_card_item)
{
    with (obj_card_item)
    {
        if (obj == 485)
        {
            obj = 486
            obj_draw = 129
        }
    }
}
instance_destroy()

