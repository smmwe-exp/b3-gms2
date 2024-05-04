with (instance_create(x, y, obj_smoke))
{
    sprite_index = spr_effect_transform
    image_speed = 0.3
}
global.drybones = 1
with (instance_create(x, y, obj_shell_drybones_res))
    paracaidas = other.paracaidas
if instance_exists(obj_card_item)
{
    with (obj_card_item)
    {
        if (obj == 457)
        {
            obj = 458
            obj_draw = 57
        }
    }
}
instance_destroy()

