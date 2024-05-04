type = 1
sprite_index = spr_panel_circle
image_index = 1
obj_panel_expand.header = 1
posicion = 2
with (instance_create((__view_get( e__VW.XView, 0 ) + 181), (__view_get( e__VW.YView, 0 ) + 53), obj_card_circle))
{
    if (global.icecoin == 1)
    {
        obj = 440
        image_index = 150
    }
    else
    {
        obj = 439
        image_index = 46
    }
    mask_index = spr_circle_mask10_1
    value = 0
    other.image_selected = image_index
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 209), (__view_get( e__VW.YView, 0 ) + 63), obj_card_circle))
{
    if (global.coin10 == 0)
    {
        obj = 442
        image_index = 47
    }
    else if (global.coin10 == 1)
    {
        obj = 443
        image_index = 48
    }
    else
    {
        obj = 444
        image_index = 49
    }
    mask_index = spr_circle_mask10_2
    value = 1
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 229), (__view_get( e__VW.YView, 0 ) + 91), obj_card_circle))
{
    obj = 441
    image_index = 148
    mask_index = spr_circle_mask10_3
    value = 2
    if (instance_number(obj_pink_coin_res) > 4)
        disabled = 1
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 229), (__view_get( e__VW.YView, 0 ) + 123), obj_card_circle))
{
    if (global.hen_mushroom == 0)
    {
        obj = 478
        image_index = 96
    }
    else
    {
        obj = 481
        image_index = 31
    }
    mask_index = spr_circle_mask10_4
    value = 3
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 209), (__view_get( e__VW.YView, 0 ) + 151), obj_card_circle))
{
    if (global.flower == 0)
    {
        obj = 479
        image_index = 61
    }
    else
    {
        obj = 482
        image_index = 62
    }
    mask_index = spr_circle_mask10_5
    value = 4
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 181), (__view_get( e__VW.YView, 0 ) + 161), obj_card_circle))
{
    obj = 483
    image_index = obj_panel_expand.img_cap
    mask_index = spr_circle_mask10_6
    value = 5
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 153), (__view_get( e__VW.YView, 0 ) + 151), obj_card_circle))
{
    obj = 433
    image_index = 184
    mask_index = spr_circle_mask10_7
    value = 6
    disabled = 1
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 133), (__view_get( e__VW.YView, 0 ) + 123), obj_card_circle))
{
    obj = 484
    image_index = 130
    mask_index = spr_circle_mask10_8
    value = 7
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 133), (__view_get( e__VW.YView, 0 ) + 91), obj_card_circle))
{
    obj = 477
    image_index = obj_panel_expand.img_1up
    mask_index = spr_circle_mask10_9
    value = 8
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 153), (__view_get( e__VW.YView, 0 ) + 63), obj_card_circle))
{
    if (global.yoshi_egg == 0)
    {
        obj = 518
        image_index = 59
    }
    else
    {
        obj = 519
        image_index = 60
    }
    mask_index = spr_circle_mask10_10
    value = 9
}

