with (instance_create(x, y, obj_smoke))
{
    sprite_index = spr_effect_transform
    image_speed = 0.3
    depth = -8
}
global.cerdito = 0
instance_create(x, y, obj_cerdito_snd_res)
if instance_exists(obj_card_item)
{
    with (obj_card_item)
    {
        if (obj == 582)
        {
            obj = 578
            obj_draw = 15
        }
    }
}
instance_destroy()

