if (sprite_index == s_magikoopa_disappear)
{
    visible = 0
    sprite_index = s_magikoopa
    image_speed = 0
    image_index = 0
    ready = 1
    alarm[2] = 160
}
else if (sprite_index == s_magikoopa_appear)
{
    sprite_index = s_magikoopa
    image_speed = 0.09
    hardness = 0
    stomp = 0
    alarm[0] = 75
}

