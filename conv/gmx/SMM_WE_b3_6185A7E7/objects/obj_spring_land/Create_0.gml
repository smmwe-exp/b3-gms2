if (global.apariencia == 0)
    sprite_index = spr_SMB_spring_land
else if (global.apariencia == 1)
    sprite_index = spr_SMB3_spring_land
else if (global.apariencia == 4)
{
    if ((global.bg_level == "catsle") || ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1))))
        sprite_index = spr_SMB2_spring_land_night
    else
        sprite_index = spr_SMB2_spring_land
}
image_speed = 0
image_index = 0
ready = 0
direct = 1
obj_generador = 0
big = 0
swimming = 0
modo_lava = 0
my_object = 0
mytop = instance_create((x + 4), y, obj_solidtop)
enable = 0
koopa_inside = 0
imagen = 1757
sp_obj = 0
id_obj = 0
golpe_dir = 1

