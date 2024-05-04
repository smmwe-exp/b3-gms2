with (instance_create(x, y, obj_smoke))
{
    sprite_index = spr_effect_transform
    image_speed = 0.3
    depth = -8
}
global.cerdito = 1
instance_create(x, y, obj_conmocion_snd_res)
if instance_exists(obj_card_item)
{
    with (obj_card_item)
    {
        if (obj == 578)
        {
            obj = 582
            obj_draw = 11
        }
    }
}
instance_destroy()

