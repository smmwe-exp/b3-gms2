if ((global.bg_level == "snow") && (global.modo_noche == 1))
{
    img_ground = 85
    img_block = 68
    img_rock = 22
    img_pinchos = 109
    img_donut = 181
    img_cloud = 177
    img_pokey = 153
}
else if (global.bg_level == "snow")
{
    img_ground = 84
    img_block = 67
    img_rock = 21
    img_pinchos = 108
    img_donut = 180
    img_cloud = 176
    img_pokey = 153
}
else if (global.bg_level == "desert")
    img_ground = 83
else if (global.bg_level == "sky")
    img_ground = 82
else if (global.bg_level == "forest")
{
    img_ground = 81
    img_hidden_block = 10
}
else if ((global.bg_level == "airship") && (global.modo_noche == 1))
{
    img_ground = 80
    if (global.apariencia == 0)
        img_rock = 19
}
else if (global.bg_level == "airship")
{
    img_ground = 79
    if (global.apariencia == 0)
        img_rock = 19
}
else if (global.bg_level == "ghost")
{
    img_ground = 78
    img_block = 65
    img_rock = 18
    img_hidden_block = 12
}
else if ((global.bg_level == "underwater") && (global.modo_noche == 1))
{
    img_ground = 77
    img_rock = 20
    img_pinchos = 107
    img_cloud = 104
    img_hidden_block = 8
}
else if (global.bg_level == "underwater")
{
    img_ground = 76
    img_rock = 20
    img_pinchos = 107
    img_cloud = 104
    img_hidden_block = 8
}
else if ((global.bg_level == "castle") && (global.modo_noche == 1))
{
    img_ground = 75
    img_block = 66
    img_rock = 19
    img_donut = 179
    img_cloud = 175
    img_hidden_block = 12
}
else if (global.bg_level == "castle")
{
    img_ground = 74
    img_block = 66
    img_rock = 19
    img_donut = 179
    img_cloud = 175
    img_hidden_block = 12
}
else if (global.bg_level == "underground")
{
    img_ground = 73
    img_block = 65
    img_rock = 18
    img_hidden_block = 12
}
else if (global.bg_level == "ground")
    img_ground = 72
if ((global.modo_noche == 1) && (global.bg_level == "ground"))
    img_1up = 123
if ((global.bg_level == "castle") || ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1))))
{
    img_billbanzai = 3
    img_bobomb = 26
    img_buzzy = 36
    img_buzzy_shell = 88
    img_muncher = 101
    img_chomp = 142
    img_bulletbill = 6
    img_cannon = 156
}
if ((global.bg_level == "ghost") || ((global.bg_level == "underground") || ((global.modo_noche == 1) && ((global.bg_level != "snow") && (global.bg_level != "castle")))))
{
    img_cloud_block = 174
    img_donut = 178
}
if ((global.modo_noche == 1) && (global.bg_level != "underwater"))
    img_hidden_block = 12
if instance_exists(obj_card_item)
{
    with (obj_card_item)
    {
        if (obj == 433)
            obj_draw = other.img_ground
        else if (obj == 489)
            obj_draw = other.img_block
        else if (obj == 437)
            obj_draw = other.img_rock
        else if (obj == 506)
            obj_draw = other.img_pinchos
        else if (obj == 495)
            obj_draw = other.img_billbanzai
        else if (obj == 469)
            obj_draw = other.img_bobomb
        else if (obj == 450)
            obj_draw = other.img_buzzy
        else if (obj == 460)
            obj_draw = other.img_buzzy_shell
        else if (obj == 494)
            obj_draw = other.img_muncher
        else if (obj == 504)
            obj_draw = other.img_chomp
        else if (obj == 488)
            obj_draw = other.img_hidden_block
        else if (obj == 507)
            obj_draw = other.img_cloud
        else if (obj == 477)
            obj_draw = other.img_1up
        else if (obj == 471)
            obj_draw = other.img_bulletbill
        else if (obj == 473)
            obj_draw = other.img_cannon
        else if (obj == 530)
            obj_draw = other.img_pokey
    }
}

