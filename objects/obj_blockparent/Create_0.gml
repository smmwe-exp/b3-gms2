ready = 0
mysolid = instance_create(x, y, obj_solid)
tipo = 1741
subimagen = 0
wings = 0
wings_anim = 0
if (global.apariencia == 0)
    sprite_wings = 370
else if (global.apariencia == 1)
    sprite_wings = 1064
else
    sprite_wings = 1928
alarm[10] = 4

