image_speed = 0
value = 1
header_sprite = 2451
header = 0
draw_circles_1 = 0
draw_circles_2 = 0
circle_1 = 0
circle_2 = 0
img_1up = 0
img_pipes = 134
img_mushroom_platform = 90
img_semisolid_platform = 50
img_puente = 118
img_cloud_block = 103
img_fireflower = 61
img_cap = 113
img_donut = 53
img_hidden_block = 11
img_buzzy = 35
img_buzzy_shell = 87
img_muncher = 100
img_bobomb = 25
img_billbanzai = 2
img_chomp = 141
img_bullet = 5
img_cannon = 155
img_mazo = 164
img_pokey = 152
if ((global.bg_level == "snow") && (global.modo_noche == 1))
{
    img_ground = 85
    img_pendiente1 = 208
    img_pinchos = 109
    img_block = 68
    img_rock = 22
    img_pokey = 153
    img_cloud_block = 177
    img_donut = 181
}
else if (global.bg_level == "snow")
{
    img_ground = 84
    img_pendiente1 = 207
    img_pinchos = 108
    img_block = 67
    img_rock = 21
    img_pokey = 153
    img_cloud_block = 176
    img_donut = 180
}
else if (global.bg_level == "desert")
{
    img_ground = 83
    img_pendiente1 = 206
    img_pinchos = 106
    img_block = 64
    img_rock = 17
}
else if (global.bg_level == "sky")
{
    img_ground = 82
    img_pendiente1 = 205
    img_pinchos = 106
    img_block = 64
    img_rock = 19
}
else if (global.bg_level == "forest")
{
    img_ground = 81
    img_pendiente1 = 204
    img_pinchos = 106
    img_block = 64
    img_rock = 17
    img_hidden_block = 10
}
else if (global.bg_level == "airship")
{
    if (global.modo_noche == 1)
    {
        img_ground = 80
        img_pendiente1 = 203
    }
    else
    {
        img_ground = 79
        img_pendiente1 = 202
    }
    img_pinchos = 106
    img_block = 66
    img_rock = 19
}
else if (global.bg_level == "ghost")
{
    img_ground = 78
    img_pendiente1 = 201
    img_pinchos = 106
    img_block = 65
    img_rock = 18
    img_hidden_block = 12
}
else if (global.bg_level == "underwater")
{
    if (global.modo_noche == 1)
    {
        img_ground = 77
        img_pendiente1 = 200
    }
    else
    {
        img_ground = 76
        img_pendiente1 = 199
    }
    img_pinchos = 107
    img_block = 64
    img_rock = 20
    img_hidden_block = 8
    img_cloud_block = 104
}
else if (global.bg_level == "castle")
{
    if (global.modo_noche == 1)
    {
        img_ground = 75
        img_pendiente1 = 198
    }
    else
    {
        img_ground = 74
        img_pendiente1 = 197
    }
    img_pinchos = 106
    img_block = 66
    img_rock = 19
    img_cloud_block = 175
    img_donut = 179
}
else if (global.bg_level == "underground")
{
    img_ground = 73
    img_pendiente1 = 196
    img_pinchos = 106
    img_block = 65
    img_rock = 18
    img_hidden_block = 12
}
else if (global.bg_level == "ground")
{
    img_ground = 72
    img_pendiente1 = 195
    img_pinchos = 106
    img_block = 64
    img_rock = 17
}
if ((global.bg_level == "castle") || ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1))))
{
    img_buzzy = 36
    img_buzzy_shell = 88
    img_muncher = 101
    img_billbanzai = 3
    img_chomp = 142
    img_bobomb = 26
    img_bullet = 6
    img_cannon = 156
    img_mazo = 165
}
if ((global.bg_level == "ghost") || ((global.bg_level == "underground") || ((global.modo_noche == 1) && ((global.bg_level != "snow") && (global.bg_level != "castle")))))
{
    img_cloud_block = 174
    img_donut = 178
}
if ((global.modo_noche == 1) && (global.bg_level != "underwater"))
    img_hidden_block = 12
if ((global.modo_noche == 1) && (global.bg_level == "ground"))
    img_1up = 123
value = (obj_editormanager.panel_circle + 1)
instance_create((__view_get( e__VW.XView, 0 ) + 350), (__view_get( e__VW.YView, 0 ) + 19), obj_button_close)
with (instance_create((__view_get( e__VW.XView, 0 ) + 51), (__view_get( e__VW.YView, 0 ) + 111), obj_next_before))
    image_index = 0
with (instance_create((__view_get( e__VW.XView, 0 ) + 304), (__view_get( e__VW.YView, 0 ) + 111), obj_next_before))
    image_index = 1
with (instance_create((__view_get( e__VW.XView, 0 ) + 192), (__view_get( e__VW.YView, 0 ) + 125), obj_panel_circle))
{
    can_anim = 1
    anim = 0.6
}
if ((value == 1) || (value == 2))
    header = 0
else if (value == 3)
    header = 1
else if ((value == 4) || ((value == 5) || ((value == 6) || (value == 7))))
    header = 2
else
    header = 3

