type = 2
sprite_index = spr_panel_circle_7
image_index = 2
obj_panel_expand.header = 2
posicion = 6
with (instance_create((__view_get( e__VW.XView, 0 ) + 181), (__view_get( e__VW.YView, 0 ) + 58), obj_card_circle))
{
    obj = 433
    image_index = 32
    mask_index = spr_circle_mask7_1
    value = 0
    disabled = 1
    other.image_selected = 32
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 218), (__view_get( e__VW.YView, 0 ) + 74), obj_card_circle))
{
    obj = 433
    image_index = 33
    mask_index = spr_circle_mask7_2
    value = 1
    disabled = 1
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 233), (__view_get( e__VW.YView, 0 ) + 111), obj_card_circle))
{
    obj = 465
    image_index = 30
    mask_index = spr_circle_mask7_3
    value = 2
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 205), (__view_get( e__VW.YView, 0 ) + 150), obj_card_circle))
{
    obj = 452
    image_index = 185
    mask_index = spr_circle_mask7_4
    value = 3
    disabled = 1
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 156), (__view_get( e__VW.YView, 0 ) + 150), obj_card_circle))
{
    obj = 454
    if (global.modo_noche == 1)
        image_index = 99
    else
        image_index = 131
    mask_index = spr_circle_mask7_5
    value = 4
    if (instance_number(obj_angrysun_res) > 0)
        disabled = 1
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 129), (__view_get( e__VW.YView, 0 ) + 111), obj_card_circle))
{
    obj = 433
    image_index = 161
    mask_index = spr_circle_mask7_6
    value = 5
    disabled = 1
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 144), (__view_get( e__VW.YView, 0 ) + 74), obj_card_circle))
{
    if (global.clown == 0)
    {
        obj = 516
        image_index = 44
    }
    else
    {
        obj = 517
        image_index = 45
    }
    mask_index = spr_circle_mask7_7
    value = 6
}

