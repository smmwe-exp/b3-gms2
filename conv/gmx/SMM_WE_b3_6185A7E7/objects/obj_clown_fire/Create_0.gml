event_inherited()
if (global.apariencia == 0)
{
    s_clown = 520
    s_clown_eyes = 521
    s_clown_evil = 522
    s_clown_damage = 523
}
else if (global.apariencia == 1)
{
    s_clown = 1242
    s_clown_eyes = 1243
    s_clown_evil = 1244
    s_clown_damage = 1245
}
else if (global.apariencia == 2)
{
    s_clown = 2135
    s_clown_eyes = 2136
    s_clown_evil = 2137
    s_clown_damage = 2138
}
else
{
    s_clown = 520
    s_clown_eyes = 521
    s_clown_evil = 522
    s_clown_damage = 523
}
s_clown_evil_bounce = 0
s_clown_bounce = 0
fire = 0
carga = 0
audio_charge = 0
clown_smoke = instance_create(x, (y + 5), obj_clown_smoke)
smoke_id = clown_smoke.id
alarm[4] = 120

