type = 3
sprite_index = spr_panel_circle_7
image_index = 3
obj_panel_expand.header = 3
posicion = 11
with (instance_create((__view_get( e__VW.XView, 0 ) + 181), (__view_get( e__VW.YView, 0 ) + 58), obj_card_circle))
{
    obj = 499
    image_index = 15
    mask_index = spr_circle_mask7_1
    value = 0
    other.image_selected = 15
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 218), (__view_get( e__VW.YView, 0 ) + 74), obj_card_circle))
{
    if (global.onoff == 0)
    {
        obj = 500
        image_index = 13
    }
    else
    {
        obj = 501
        image_index = 14
    }
    mask_index = spr_circle_mask7_2
    value = 1
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 233), (__view_get( e__VW.YView, 0 ) + 111), obj_card_circle))
{
    obj = 433
    image_index = 171
    mask_index = spr_circle_mask7_3
    disabled = 1
    value = 2
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 205), (__view_get( e__VW.YView, 0 ) + 150), obj_card_circle))
{
    obj = 433
    image_index = 167
    mask_index = spr_circle_mask7_4
    disabled = 1
    value = 3
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 156), (__view_get( e__VW.YView, 0 ) + 150), obj_card_circle))
{
    obj = 508
    image_index = 105
    mask_index = spr_circle_mask7_5
    value = 4
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 129), (__view_get( e__VW.YView, 0 ) + 111), obj_card_circle))
{
    obj = 536
    if (global.cintas == 0)
        image_index = 42
    else
        image_index = 40
    mask_index = spr_circle_mask7_6
    value = 5
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 144), (__view_get( e__VW.YView, 0 ) + 74), obj_card_circle))
{
    obj = 433
    image_index = 173
    mask_index = spr_circle_mask7_7
    disabled = 1
    value = 6
}

