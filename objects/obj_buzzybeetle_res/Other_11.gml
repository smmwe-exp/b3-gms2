with (instance_create(x, y, obj_smoke))
{
    sprite_index = spr_effect_transform
    image_speed = 0.3
}
global.buzzy = 1
with (instance_create(x, y, obj_buzzy_shell_res))
    paracaidas = other.paracaidas
if instance_exists(obj_card_item)
{
    with (obj_card_item)
    {
        if (obj == 450)
        {
            obj = 460
            if ((global.bg_level == "castle") || ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1))))
                obj_draw = 88
            else
                obj_draw = 87
        }
    }
}
instance_destroy()

