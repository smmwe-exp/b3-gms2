with (instance_create(x, y, obj_smoke))
{
    sprite_index = spr_effect_transform
    image_speed = 0.3
}
global.spiny = 1
with (instance_create(x, y, obj_spiny_shell_res))
    paracaidas = other.paracaidas
if instance_exists(obj_card_item)
{
    with (obj_card_item)
    {
        if (obj == 451)
        {
            obj = 459
            obj_draw = 89
        }
    }
}
instance_destroy()

