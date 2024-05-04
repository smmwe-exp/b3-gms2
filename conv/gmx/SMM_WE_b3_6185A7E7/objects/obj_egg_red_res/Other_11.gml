with (instance_create(x, y, obj_smoke))
{
    sprite_index = spr_effect_transform
    image_speed = 0.3
}
global.yoshi_egg = 0
with (instance_create(x, y, obj_egg_res))
{
    wings = other.wings
    pararacidas = other.paracaidas
}
if instance_exists(obj_card_item)
{
    with (obj_card_item)
    {
        if (obj == 519)
        {
            obj = 518
            obj_draw = 59
        }
    }
}
instance_destroy()

