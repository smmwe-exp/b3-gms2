type = 3
image_index = 3
sprite_index = spr_panel_circle_7
obj_panel_expand.header = 3
posicion = 10
with (instance_create((__view_get( e__VW.XView, 0 ) + 181), (__view_get( e__VW.YView, 0 ) + 58), obj_card_circle))
{
    if (global.platform == 0)
    {
        obj = 534
        image_index = 111
    }
    else
    {
        obj = 535
        image_index = 112
    }
    mask_index = spr_circle_mask7_1
    value = 0
    other.image_selected = 111
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 218), (__view_get( e__VW.YView, 0 ) + 74), obj_card_circle))
{
    if (global.lava_lift == 0)
    {
        obj = 527
        image_index = 168
    }
    else
    {
        obj = 528
        image_index = 169
    }
    mask_index = spr_circle_mask7_2
    value = 1
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 233), (__view_get( e__VW.YView, 0 ) + 111), obj_card_circle))
{
    obj = 433
    image_index = 170
    mask_index = spr_circle_mask7_3
    disabled = 1
    value = 2
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 205), (__view_get( e__VW.YView, 0 ) + 150), obj_card_circle))
{
    obj = 467
    image_index = 71
    mask_index = spr_circle_mask7_4
    value = 3
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 156), (__view_get( e__VW.YView, 0 ) + 150), obj_card_circle))
{
    obj = 468
    image_index = 34
    mask_index = spr_circle_mask7_5
    value = 4
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 129), (__view_get( e__VW.YView, 0 ) + 111), obj_card_circle))
{
    obj = 433
    image_index = obj_panel_expand.img_mazo
    mask_index = spr_circle_mask7_6
    disabled = 1
    value = 5
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 144), (__view_get( e__VW.YView, 0 ) + 74), obj_card_circle))
{
    obj = 433
    image_index = 163
    mask_index = spr_circle_mask7_7
    disabled = 1
    value = 6
}

