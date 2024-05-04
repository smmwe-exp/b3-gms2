type = 0
sprite_index = spr_panel_circle
image_index = 0
obj_panel_expand.header = 0
posicion = 0
with (instance_create((__view_get( e__VW.XView, 0 ) + 181), (__view_get( e__VW.YView, 0 ) + 58), obj_card_circle))
{
    obj = 433
    image_index = obj_panel_expand.img_ground
    mask_index = spr_circle_mask_1
    value = 0
    other.image_selected = obj_panel_expand.img_ground
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 217), (__view_get( e__VW.YView, 0 ) + 72), obj_card_circle))
{
    obj = 433
    image_index = obj_panel_expand.img_pendiente1
    mask_index = spr_circle_mask_2
    disabled = 1
    value = 1
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 231), (__view_get( e__VW.YView, 0 ) + 108), obj_card_circle))
{
    obj = 433
    image_index = obj_panel_expand.img_pendiente1
    mask_index = spr_circle_mask_3
    disabled = 1
    value = 2
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 217), (__view_get( e__VW.YView, 0 ) + 142), obj_card_circle))
{
    obj = 453
    if (global.tuberia == 0)
        image_index = 134
    else if (global.tuberia == 1)
        image_index = 135
    else if (global.tuberia == 2)
        image_index = 136
    else
        image_index = 137
    mask_index = spr_circle_mask_4
    value = 3
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 181), (__view_get( e__VW.YView, 0 ) + 156), obj_card_circle))
{
    obj = 506
    image_index = obj_panel_expand.img_pinchos
    mask_index = spr_circle_mask_5
    value = 4
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 145), (__view_get( e__VW.YView, 0 ) + 142), obj_card_circle))
{
    obj = 532
    if (global.mushroom_platform == 0)
        image_index = 90
    else if (global.mushroom_platform == 1)
        image_index = 91
    else if (global.mushroom_platform == 2)
        image_index = 92
    mask_index = spr_circle_mask_6
    value = 5
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 131), (__view_get( e__VW.YView, 0 ) + 108), obj_card_circle))
{
    obj = 531
    if (global.semisolid_platform == 0)
        image_index = 50
    else if (global.semisolid_platform == 1)
        image_index = 51
    else if (global.semisolid_platform == 2)
        image_index = 52
    mask_index = spr_circle_mask_7
    value = 6
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 145), (__view_get( e__VW.YView, 0 ) + 72), obj_card_circle))
{
    obj = 533
    image_index = obj_panel_expand.img_puente
    mask_index = spr_circle_mask_8
    value = 7
}

