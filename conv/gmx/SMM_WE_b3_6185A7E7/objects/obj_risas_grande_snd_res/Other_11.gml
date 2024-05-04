with (instance_create(x, y, obj_smoke))
{
    sprite_index = spr_effect_transform
    image_speed = 0.3
    depth = -8
}
global.risas = 0
instance_create(x, y, obj_risas_snd_res)
if instance_exists(obj_card_item)
{
    with (obj_card_item)
    {
        if (obj == 567)
        {
            obj = 566
            obj_draw = 19
        }
    }
}
instance_destroy()

