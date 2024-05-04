if (global.apariencia == 0)
{
    sprite_index = spr_SMB_mushroom
    sprite_wings = 370
}
else if (global.apariencia == 1)
{
    sprite_index = spr_SMB3_mushroom
    sprite_wings = 1064
}
else if (global.apariencia == 4)
{
    sprite_index = spr_SMB2_mushroom
    sprite_wings = 1064
}
else
    sprite_wings = 1928
image_speed = 0
if ((global.bg_level == "castle") || ((global.bg_level == "underground") || ((global.bg_level == "ghost") || (global.modo_noche == 1))))
    image_index = 1
else
    image_index = 0
swimming = 0
t_mario = ""
jump = 0
jump2 = 0
wings = 0
wings_anim = 0
paracaidas = 0
delay = 0
alarm[10] = 4

