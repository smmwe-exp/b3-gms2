if (global.apariencia == 0)
    sprite_index = spr_SMB_magic
else if (global.apariencia == 1)
    sprite_index = spr_SMB3_magic
int = 0
image_speed = 0.15
angle = 0
alarm[0] = 4
disappear_meta = 0
if instance_exists(obj_mario)
{
    if ((global.bg_level == "underwater") || (((global.modo_noche == 1) && (global.bg_level == "sky")) || (((global.modo_noche == 1) && (global.bg_level == "airship")) || (instance_exists(obj_lava_water) && ((y > (obj_lava_water.y + 16)) && ((global.bg_level == "forest") && (global.modo_noche == 0)))))))
        move_towards_point(obj_mario.x, obj_mario.y, 0.5)
    else
        move_towards_point(obj_mario.x, obj_mario.y, 1)
}
else if ((global.bg_level == "underwater") || (((global.modo_noche == 1) && (global.bg_level == "sky")) || (((global.modo_noche == 1) && (global.bg_level == "airship")) || (instance_exists(obj_lava_water) && ((y > (obj_lava_water.y + 16)) && ((global.bg_level == "forest") && (global.modo_noche == 0)))))))
    move_towards_point(obj_levelmanager.x, obj_levelmanager.y, 0.5)
else
    move_towards_point(obj_levelmanager.x, obj_levelmanager.y, 1)

