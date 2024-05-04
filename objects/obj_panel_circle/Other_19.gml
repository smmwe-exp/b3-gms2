type = 3
sprite_index = spr_panel_circle
image_index = 3
obj_panel_expand.header = 3
posicion = 9
with (instance_create((__view_get( e__VW.XView, 0 ) + 181), (__view_get( e__VW.YView, 0 ) + 58), obj_card_circle))
{
    obj = 445
    image_index = 146
    mask_index = spr_circle_mask_1
    value = 0
    other.image_selected = 146
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 217), (__view_get( e__VW.YView, 0 ) + 72), obj_card_circle))
{
    if (global.door == 0)
    {
        obj = 510
        image_index = 54
        if (instance_number(obj_door_res) > 3)
            disabled = 1
    }
    else if (global.door == 1)
    {
        obj = 512
        image_index = 55
        if (instance_number(obj_door_switch_res) > 3)
            disabled = 1
    }
    else
    {
        obj = 514
        image_index = 147
        if (instance_number(obj_door_lock_res) > 3)
            disabled = 1
    }
    mask_index = spr_circle_mask_2
    value = 1
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 231), (__view_get( e__VW.YView, 0 ) + 108), obj_card_circle))
{
    if (global.pblock == 0)
    {
        obj = 502
        image_index = 154
    }
    else
    {
        obj = 503
        image_index = 182
    }
    mask_index = spr_circle_mask_3
    value = 2
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 217), (__view_get( e__VW.YView, 0 ) + 142), obj_card_circle))
{
    obj = 435
    image_index = 117
    mask_index = spr_circle_mask_4
    value = 3
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 181), (__view_get( e__VW.YView, 0 ) + 156), obj_card_circle))
{
    obj = 436
    image_index = 115
    mask_index = spr_circle_mask_5
    value = 4
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 145), (__view_get( e__VW.YView, 0 ) + 142), obj_card_circle))
{
    if (global.spring == 0)
    {
        obj = 485
        image_index = 128
    }
    else
    {
        obj = 486
        image_index = 129
    }
    mask_index = spr_circle_mask_6
    value = 5
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 131), (__view_get( e__VW.YView, 0 ) + 108), obj_card_circle))
{
    obj = 529
    image_index = 149
    mask_index = spr_circle_mask_7
    value = 6
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 145), (__view_get( e__VW.YView, 0 ) + 72), obj_card_circle))
{
    obj = 525
    image_index = 1
    mask_index = spr_circle_mask_8
    value = 7
}

