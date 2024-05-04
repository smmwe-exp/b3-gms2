with (instance_create(x, y, obj_smoke))
{
    sprite_index = spr_effect_transform
    image_speed = 0.3
}
global.hen_mushroom = 1
with (instance_create(x, y, obj_hen_mushroom_res))
{
    wings = other.wings
    paracaidas = other.paracaidas
}
if instance_exists(obj_card_item)
{
    with (obj_card_item)
    {
        if (obj == 478)
        {
            obj = 481
            obj_draw = 31
        }
    }
}
instance_destroy()

