if (global.apariencia == 0)
{
    s_soplete_start = 585
    s_soplete = 586
}
else if (global.apariencia == 3)
{
    s_soplete_start = 1303
    s_soplete = 1304
}
else if (global.apariencia == 4)
{
    s_soplete_start = 3720
    s_soplete = 3721
}
else
{
    s_soplete_start = 2242
    s_soplete = 2243
}
direct_t = 0
rotacion = 0
invisible = 1
alarm[0] = 180
mysolid = instance_create((x - 8), (y - 8), obj_solid)
alarm[3] = 10

