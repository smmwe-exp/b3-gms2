with (instance_create(x, y, obj_smoke))
{
    sprite_index = spr_effect_transform
    image_speed = 0.3
}
global.pblock = 0
instance_create(x, y, obj_pblock_res)
if instance_exists(obj_card_item)
{
    with (obj_card_item)
    {
        if (obj == 503)
        {
            obj = 502
            obj_draw = 154
        }
    }
}
instance_destroy()

