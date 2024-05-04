type = 3
sprite_index = spr_panel_circle_7
image_index = 3
obj_panel_expand.header = 3
posicion = 8
with (instance_create((__view_get( e__VW.XView, 0 ) + 181), (__view_get( e__VW.YView, 0 ) + 58), obj_card_circle))
{
    obj = 475
    if (global.soplete == 0)
        image_index = 166
    else
        image_index = 43
    mask_index = spr_circle_mask7_1
    value = 0
    other.image_selected = 166
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 218), (__view_get( e__VW.YView, 0 ) + 74), obj_card_circle))
{
    if (global.bulletbill_base == 0)
    {
        obj = 471
        image_index = obj_panel_expand.img_bullet
    }
    else
    {
        obj = 472
        image_index = 7
    }
    mask_index = spr_circle_mask7_2
    value = 1
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 233), (__view_get( e__VW.YView, 0 ) + 111), obj_card_circle))
{
    obj = 495
    image_index = obj_panel_expand.img_billbanzai
    mask_index = spr_circle_mask7_3
    value = 2
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 205), (__view_get( e__VW.YView, 0 ) + 150), obj_card_circle))
{
    if (global.cannon == 0)
    {
        obj = 473
        image_index = obj_panel_expand.img_cannon
    }
    else
    {
        obj = 474
        image_index = 157
    }
    mask_index = spr_circle_mask7_4
    value = 3
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 156), (__view_get( e__VW.YView, 0 ) + 150), obj_card_circle))
{
    if (global.estalactita == 0)
    {
        obj = 521
        image_index = 138
    }
    else
    {
        obj = 522
        image_index = 139
    }
    mask_index = spr_circle_mask7_5
    value = 4
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 129), (__view_get( e__VW.YView, 0 ) + 111), obj_card_circle))
{
    obj = 498
    image_index = 133
    mask_index = spr_circle_mask7_6
    value = 5
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 144), (__view_get( e__VW.YView, 0 ) + 74), obj_card_circle))
{
    obj = 509
    image_index = 37
    mask_index = spr_circle_mask7_7
    if (instance_number(obj_checkpoint_res) > 0)
        disabled = 1
    value = 6
}

