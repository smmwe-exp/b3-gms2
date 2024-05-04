with (instance_create(x, y, obj_smoke))
{
    sprite_index = spr_effect_transform
    image_speed = 0.3
}
global.noteblock = 0
instance_create(x, y, obj_noteblock_res)
if instance_exists(obj_card_item)
{
    with (obj_card_item)
    {
        if (obj == 491)
        {
            obj = 490
            obj_draw = 102
        }
    }
}
instance_destroy()

