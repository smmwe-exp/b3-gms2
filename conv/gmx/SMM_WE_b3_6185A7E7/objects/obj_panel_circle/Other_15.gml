type = 2
sprite_index = spr_panel_circle
image_index = 2
obj_panel_expand.header = 2
posicion = 5
with (instance_create((__view_get( e__VW.XView, 0 ) + 181), (__view_get( e__VW.YView, 0 ) + 58), obj_card_circle))
{
    if (global.floruga == 0)
    {
        obj = 455
        image_index = 158
    }
    else
    {
        obj = 456
        image_index = 159
    }
    mask_index = spr_circle_mask_1
    value = 0
    other.image_selected = image_index
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 217), (__view_get( e__VW.YView, 0 ) + 72), obj_card_circle))
{
    obj = 505
    image_index = 28
    mask_index = spr_circle_mask_2
    value = 1
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 231), (__view_get( e__VW.YView, 0 ) + 108), obj_card_circle))
{
    obj = 520
    image_index = 114
    mask_index = spr_circle_mask_3
    value = 2
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 217), (__view_get( e__VW.YView, 0 ) + 142), obj_card_circle))
{
    obj = 469
    image_index = obj_panel_expand.img_bobomb
    mask_index = spr_circle_mask_4
    value = 3
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 181), (__view_get( e__VW.YView, 0 ) + 156), obj_card_circle))
{
    if (global.drybones == 0)
    {
        obj = 457
        image_index = 56
    }
    else
    {
        obj = 458
        image_index = 57
    }
    mask_index = spr_circle_mask_5
    value = 4
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 145), (__view_get( e__VW.YView, 0 ) + 142), obj_card_circle))
{
    obj = 433
    image_index = 58
    mask_index = spr_circle_mask_6
    disabled = 1
    value = 5
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 131), (__view_get( e__VW.YView, 0 ) + 108), obj_card_circle))
{
    obj = 526
    image_index = 145
    mask_index = spr_circle_mask_7
    value = 6
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 145), (__view_get( e__VW.YView, 0 ) + 72), obj_card_circle))
{
    obj = 530
    image_index = obj_panel_expand.img_pokey
    mask_index = spr_circle_mask_8
    value = 7
}

