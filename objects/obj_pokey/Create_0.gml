if (global.apariencia == 0)
{
    if (global.bg_level == "snow")
        sprite_index = spr_SMB_pokey_snow
    else
        sprite_index = spr_SMB_pokey
}
else if (global.apariencia == 1)
{
    if (global.bg_level == "snow")
        sprite_index = spr_SMB3_pokey_snow
    else
        sprite_index = spr_SMB3_pokey
}
else if (global.apariencia == 2)
{
    if (global.bg_level == "snow")
        sprite_index = spr_pokey_snow
    else
        sprite_index = spr_pokey
}
else if (global.apariencia == 4)
{
    if (global.bg_level == "snow")
        sprite_index = spr_SMB2_pokey_snow
    else
        sprite_index = spr_SMB2_pokey
}
hardness = 0
stomp = 1
edible = 0
direct = -1
wings = 0
wings_anim = 0
paracaidas = 0
innave = 0
dead_h = 0
modo_lava = 0
apilar = 0
swimming = 0
image_speed = 0
alarm[10] = 2
if position_meeting(x, (bbox_bottom + 8), obj_pokey)
{
    mebelow = collision_point(x, (bbox_bottom + 8), obj_pokey, 0, 0)
    alarm[0] = 10
}
else
{
    mebelow = -4
    alarm[10] = 2
}
a = -16
alarm[9] = 2
offset = 0
offsetnext = 0
offsetxscale = 1
rotacion = 0
up = 0

