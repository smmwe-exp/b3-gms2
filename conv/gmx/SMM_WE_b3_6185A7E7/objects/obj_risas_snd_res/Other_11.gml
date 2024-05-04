with (instance_create(x, y, obj_smoke))
{
    sprite_index = spr_effect_transform
    image_speed = 0.3
    depth = -8
}
global.risas = 1
instance_create(x, y, obj_risas_grande_snd_res)
if instance_exists(obj_card_item)
{
    with (obj_card_item)
    {
        if (obj == 566)
        {
            obj = 567
            obj_draw = 21
        }
    }
}
instance_destroy()

