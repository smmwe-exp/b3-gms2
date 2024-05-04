with (instance_create(x, y, obj_smoke))
{
    sprite_index = spr_effect_transform
    image_speed = 0.3
}
global.ahh = 0
instance_create(x, y, obj_ahh_snd_res)
if instance_exists(obj_card_item)
{
    with (obj_card_item)
    {
        if (obj == 573)
        {
            obj = 572
            obj_draw = 24
        }
    }
}
instance_destroy()

