type = 2
sprite_index = spr_panel_circle_7
image_index = 2
obj_panel_expand.header = 2
posicion = 3
with (instance_create((__view_get( e__VW.XView, 0 ) + 181), (__view_get( e__VW.YView, 0 ) + 58), obj_card_circle))
{
    if (global.goomba == 0)
    {
        obj = 446
        image_index = 69
    }
    else
    {
        obj = 447
        image_index = 70
        other.image_selected = 70
    }
    mask_index = spr_circle_mask7_1
    value = 0
    other.image_selected = image_index
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 218), (__view_get( e__VW.YView, 0 ) + 74), obj_card_circle))
{
    if (global.koopa == 0)
    {
        obj = 448
        image_index = 94
    }
    else
    {
        obj = 449
        image_index = 95
    }
    mask_index = spr_circle_mask7_2
    value = 1
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 233), (__view_get( e__VW.YView, 0 ) + 111), obj_card_circle))
{
    if (global.buzzy == 0)
    {
        obj = 450
        image_index = obj_panel_expand.img_buzzy
    }
    else
    {
        obj = 460
        image_index = obj_panel_expand.img_buzzy_shell
    }
    mask_index = spr_circle_mask7_3
    value = 2
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 205), (__view_get( e__VW.YView, 0 ) + 150), obj_card_circle))
{
    obj = 433
    image_index = 125
    mask_index = spr_circle_mask7_4
    value = 3
    disabled = 1
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 156), (__view_get( e__VW.YView, 0 ) + 150), obj_card_circle))
{
    if (global.spiny == 0)
    {
        obj = 451
        image_index = 127
    }
    else
    {
        obj = 459
        image_index = 89
    }
    mask_index = spr_circle_mask7_5
    value = 4
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 129), (__view_get( e__VW.YView, 0 ) + 111), obj_card_circle))
{
    obj = 462
    image_index = 23
    mask_index = spr_circle_mask7_6
    value = 5
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 144), (__view_get( e__VW.YView, 0 ) + 74), obj_card_circle))
{
    if (global.cheepcheep == 0)
    {
        obj = 523
        image_index = 38
    }
    else
    {
        obj = 524
        image_index = 39
    }
    mask_index = spr_circle_mask7_7
    value = 6
}

