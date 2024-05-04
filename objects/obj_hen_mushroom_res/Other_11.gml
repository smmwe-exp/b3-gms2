with (instance_create(x, y, obj_smoke))
{
    sprite_index = spr_effect_transform
    image_speed = 0.3
}
global.hen_mushroom = 0
with (instance_create(x, y, obj_mushroom_res))
{
    wings = other.wings
    paracaidas = other.paracaidas
}
if instance_exists(obj_card_item)
{
    with (obj_card_item)
    {
        if (obj == 481)
        {
            obj = 478
            obj_draw = 96
        }
    }
}
instance_destroy()

