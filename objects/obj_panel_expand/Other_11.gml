if (global.bg_level == "ground")
{
    s_ground = 55
    s_dec = 39
    s_dec_hongo = 69
    s_block_hidden = 7
    s_puente = 94
}
else if (global.bg_level == "underground")
{
    s_ground = 56
    s_dec = 42
    s_dec_hongo = 69
    s_block_hidden = 8
    s_puente = 96
}
else if (global.bg_level == "castle")
{
    s_ground = 57
    s_dec = 35
    s_dec_hongo = 69
    s_block_hidden = 8
    s_puente = 96
}
else if (global.bg_level == "underwater")
{
    s_ground = 58
    s_dec = 43
    s_dec_hongo = 71
    s_block_hidden = 4
    s_puente = 96
}
else if (global.bg_level == "ghost")
{
    s_ground = 59
    s_dec = 38
    s_dec_hongo = 69
    s_block_hidden = 8
    s_puente = 96
}
else if (global.bg_level == "airship")
{
    s_ground = 60
    s_dec = 34
    s_dec_hongo = 68
    s_block_hidden = 7
    s_puente = 96
}
else if (global.bg_level == "forest")
{
    s_ground = 61
    s_dec = 37
    s_dec_hongo = 69
    s_block_hidden = 6
    s_puente = 94
}
else if (global.bg_level == "sky")
{
    s_ground = 62
    s_dec = 40
    s_dec_hongo = 69
    s_block_hidden = 7
    s_puente = 94
}
else if (global.bg_level == "desert")
{
    s_ground = 63
    s_dec = 36
    s_dec_hongo = 69
    s_block_hidden = 5
    s_puente = 94
}
else if (global.bg_level == "snow")
{
    s_ground = 64
    s_dec = 41
    s_dec_hongo = 70
    s_block_hidden = 7
    s_puente = 95
}
if ((global.bg_level == "ghost") || (global.bg_level == "airship"))
    s_madera = 74
else
    s_madera = 13
if (global.bg_level == "underwater")
{
    s_pinchos = 85
    s_nube = 82
}
else
{
    s_pinchos = 84
    s_nube = 81
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 87), (__view_get( e__VW.YView, 0 ) + 55), obj_card_expand))
{
    obj = 433
    value = 1
    obj_draw = other.s_ground
    bg_color = spr_card_color_blue
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 113), (__view_get( e__VW.YView, 0 ) + 55), obj_card_expand))
{
    obj = 487
    value = 2
    obj_draw = 72
    bg_color = spr_card_color_blue
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 139), (__view_get( e__VW.YView, 0 ) + 55), obj_card_expand))
{
    obj = 111
    value = 3
    obj_draw = other.s_block_hidden
    bg_color = spr_card_color_blue
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 165), (__view_get( e__VW.YView, 0 ) + 55), obj_card_expand))
{
    obj = 489
    value = 4
    obj_draw = 51
    bg_color = spr_card_color_blue
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 197), (__view_get( e__VW.YView, 0 ) + 55), obj_card_expand))
{
    obj = 507
    value = 5
    obj_draw = other.s_nube
    bg_color = spr_card_color_blue
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 223), (__view_get( e__VW.YView, 0 ) + 55), obj_card_expand))
{
    obj = 113
    value = 6
    obj_draw = 80
    bg_color = spr_card_color_blue
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 249), (__view_get( e__VW.YView, 0 ) + 55), obj_card_expand))
{
    obj = 114
    value = 7
    obj_draw = 113
    bg_color = spr_card_color_blue
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 275), (__view_get( e__VW.YView, 0 ) + 55), obj_card_expand))
{
    obj = 166
    value = 8
    obj_draw = 110
    bg_color = spr_card_color_blue
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 87), (__view_get( e__VW.YView, 0 ) + 85), obj_card_expand))
{
    obj = 437
    value = 9
    obj_draw = other.s_madera
    bg_color = spr_card_color_blue
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 113), (__view_get( e__VW.YView, 0 ) + 85), obj_card_expand))
{
    obj = 438
    value = 10
    obj_draw = 12
    bg_color = spr_card_color_blue
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 139), (__view_get( e__VW.YView, 0 ) + 85), obj_card_expand))
{
    obj = obj_hongo1
    value = 11
    obj_draw = other.s_dec_hongo
    bg_color = spr_card_color_blue
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 165), (__view_get( e__VW.YView, 0 ) + 85), obj_card_expand))
{
    obj = obj_dec3
    value = 12
    obj_draw = other.s_dec
    bg_color = spr_card_color_blue
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 197), (__view_get( e__VW.YView, 0 ) + 85), obj_card_expand))
{
    obj = obj_puente
    value = 13
    obj_draw = other.s_puente
    bg_color = spr_card_color_blue
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 223), (__view_get( e__VW.YView, 0 ) + 85), obj_card_expand))
{
    obj = 138
    value = 14
    obj_draw = 44
    bg_color = spr_card_color_blue
}
with (instance_create((__view_get( e__VW.XView, 0 ) + 249), (__view_get( e__VW.YView, 0 ) + 85), obj_card_expand))
{
    obj = 506
    value = 16
    obj_draw = other.s_pinchos
    bg_color = spr_card_color_blue
}

