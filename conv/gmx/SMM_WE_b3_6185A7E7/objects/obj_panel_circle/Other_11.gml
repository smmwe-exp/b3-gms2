type = 0
sprite_index = spr_panel_circle
image_index = 0
obj_panel_expand.header = 0
posicion = 1
with (instance_create((__view_get( e__VW.XView, 0 ) + 181), (__view_get( e__VW.YView, 0 ) + 58), obj_card_circle))
{
    obj = 489
    image_index = obj_panel_expand.img_block
    mask_index = spr_circle_mask_1
    value = 0
    other.image_selected = obj_panel_expand.img_block
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 217), (__view_get( e__VW.YView, 0 ) + 72), obj_card_circle))
{
    obj = 487
    image_index = 93
    mask_index = spr_circle_mask_2
    value = 1
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 231), (__view_get( e__VW.YView, 0 ) + 108), obj_card_circle))
{
    obj = 437
    image_index = obj_panel_expand.img_rock
    mask_index = spr_circle_mask_3
    value = 2
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 217), (__view_get( e__VW.YView, 0 ) + 142), obj_card_circle))
{
    obj = 488
    image_index = obj_panel_expand.img_hidden_block
    mask_index = spr_circle_mask_4
    value = 3
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 181), (__view_get( e__VW.YView, 0 ) + 156), obj_card_circle))
{
    obj = 461
    image_index = obj_panel_expand.img_donut
    mask_index = spr_circle_mask_5
    value = 4
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 145), (__view_get( e__VW.YView, 0 ) + 142), obj_card_circle))
{
    if (global.noteblock == 0)
    {
        obj = 490
        image_index = 102
    }
    else
    {
        obj = 491
        image_index = 140
    }
    mask_index = spr_circle_mask_6
    value = 5
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 131), (__view_get( e__VW.YView, 0 ) + 108), obj_card_circle))
{
    obj = 507
    image_index = obj_panel_expand.img_cloud_block
    mask_index = spr_circle_mask_7
    value = 6
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 145), (__view_get( e__VW.YView, 0 ) + 72), obj_card_circle))
{
    obj = 438
    image_index = 16
    mask_index = spr_circle_mask_8
    value = 7
}

