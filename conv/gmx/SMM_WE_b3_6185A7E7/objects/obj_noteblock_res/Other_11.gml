with (instance_create(x, y, obj_smoke))
{
    sprite_index = spr_effect_transform
    image_speed = 0.3
}
global.noteblock = 1
instance_create(x, y, obj_musicblock_res)
if instance_exists(obj_card_item)
{
    with (obj_card_item)
    {
        if (obj == 490)
        {
            obj = 491
            obj_draw = 140
        }
    }
}
instance_destroy()

