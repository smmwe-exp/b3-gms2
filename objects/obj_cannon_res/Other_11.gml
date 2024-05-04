with (instance_create(x, y, obj_smoke))
{
    sprite_index = spr_effect_transform
    image_speed = 0.3
}
global.cannon = 1
with (instance_create(x, y, obj_cannon_red_res))
{
    direct = other.direct
    d = other.d
    u = other.u
    l = other.l
    r = other.r
}
if instance_exists(obj_card_item)
{
    with (obj_card_item)
    {
        if (obj == 473)
        {
            obj = 474
            obj_draw = 157
        }
    }
}
instance_destroy()

