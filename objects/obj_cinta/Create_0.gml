sprite = 0
if (global.apariencia == 0)
{
    if (global.bg_level == "castle")
    {
        sprite1 = 504
        sprite2 = 505
        sprite3 = 506
    }
    else if ((global.bg_level == "underground") || ((global.bg_level == "ghost") || (global.modo_noche == 1)))
    {
        sprite1 = 501
        sprite2 = 502
        sprite3 = 503
    }
    else
    {
        sprite1 = 498
        sprite2 = 499
        sprite3 = 500
    }
}
else if (global.apariencia == 1)
{
    if (global.bg_level == "castle")
    {
        sprite1 = 1225
        sprite2 = 1226
        sprite3 = 1227
    }
    else if ((global.bg_level == "underground") || ((global.bg_level == "ghost") || (global.modo_noche == 1)))
    {
        sprite1 = 1222
        sprite2 = 1223
        sprite3 = 1224
    }
    else
    {
        sprite1 = 1219
        sprite2 = 1220
        sprite3 = 1221
    }
}
else if (global.apariencia == 2)
{
    sprite1 = 2015
    sprite2 = 2016
    sprite3 = 2017
}
else
{
    sprite1 = 498
    sprite2 = 499
    sprite3 = 500
}
size_x = 4
velocidad = 0
image_speed = 0
direct_t = 0
stop = 0

