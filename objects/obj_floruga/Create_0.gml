var b;
if (global.apariencia == 0)
{
    sprite_index = spr_SMB_floruga_head
    sprite_wings = 369
}
else if (global.apariencia == 1)
{
    sprite_index = spr_SMB3_floruga_head
    sprite_wings = 1061
}
else if (global.apariencia == 2)
{
    sprite_index = spr_floruga_head
    sprite_wings = 1926
}
hardness = 1
stomp = 5
edible = 2
wings = 0
wings_anim = 0
jump_wings = 0
paracaidas = 0
modo_lava = 0
dead_h = 0
direct = -1
innave = 0
swimming = 0
apilar = 0
obj_apilar = ""
obj_apilar_wings = 0
apilado = 0
my_apilar = 0
image_speed = 0.125
alarm[10] = 2
state = 0
color = 0
seg = 5
for (b = 1; b < seg; b++)
{
    mybody[b] = instance_create(xstart, ystart, obj_floruga_body)
    mybody[b].image_speed = 0.125
    mybody[b].image_index = b
    mybody[b].depth = (0 + b)
    mybody[b].parent = id
    if (b == 1)
        mybody[b].prevsegment = other.id
    else
        mybody[b].prevsegment = (mybody[b] - 1)
}
closeness = 16
amount_previous = 85
closeness_h = 16
closeness_v = 16
for (i = 1; i < amount_previous; i++)
{
    oldx[i] = x
    oldy[i] = y
}

