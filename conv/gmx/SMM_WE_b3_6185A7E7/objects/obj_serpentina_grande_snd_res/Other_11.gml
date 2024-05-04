with (instance_create(x, y, obj_smoke))
{
    sprite_index = spr_effect_transform
    image_speed = 0.3
    depth = -8
}
global.serpentina = 0
instance_create(x, y, obj_serpentina_snd_res)
if instance_exists(obj_card_item)
{
    with (obj_card_item)
    {
        if (obj == 581)
        {
            obj = 580
            obj_draw = 20
        }
    }
}
instance_destroy()

