type = 2
sprite_index = spr_panel_circle
image_index = 2
obj_panel_expand.header = 2
posicion = 4
with (instance_create((__view_get( e__VW.XView, 0 ) + 181), (__view_get( e__VW.YView, 0 ) + 58), obj_card_circle))
{
    if (global.plant == 0)
    {
        obj = 492
        image_index = 116
    }
    else
    {
        obj = 493
        image_index = 110
    }
    mask_index = spr_circle_mask_1
    value = 0
    other.image_selected = image_index
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 217), (__view_get( e__VW.YView, 0 ) + 72), obj_card_circle))
{
    obj = 494
    image_index = obj_panel_expand.img_muncher
    mask_index = spr_circle_mask_2
    value = 1
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 231), (__view_get( e__VW.YView, 0 ) + 108), obj_card_circle))
{
    obj = 466
    image_index = 132
    mask_index = spr_circle_mask_3
    value = 2
    disabled = 1
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 217), (__view_get( e__VW.YView, 0 ) + 142), obj_card_circle))
{
    obj = 476
    image_index = 97
    mask_index = spr_circle_mask_4
    value = 3
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 181), (__view_get( e__VW.YView, 0 ) + 156), obj_card_circle))
{
    obj = 433
    image_index = 98
    mask_index = spr_circle_mask_5
    value = 4
    disabled = 1
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 145), (__view_get( e__VW.YView, 0 ) + 142), obj_card_circle))
{
    obj = 463
    image_index = 86
    mask_index = spr_circle_mask_6
    value = 5
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 131), (__view_get( e__VW.YView, 0 ) + 108), obj_card_circle))
{
    obj = 504
    image_index = obj_panel_expand.img_chomp
    mask_index = spr_circle_mask_7
    value = 6
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 145), (__view_get( e__VW.YView, 0 ) + 72), obj_card_circle))
{
    obj = 496
    image_index = 151
    mask_index = spr_circle_mask_8
    value = 7
}

