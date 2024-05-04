if instance_exists(obj_mario_transform2)
    depth = -5
else
    depth = -8
if (instance_exists(obj_lava_water) && ((y > (obj_lava_water.y + 16)) && ((global.bg_level == "castle") && (modo_lava == 0))))
{
    with (instance_create(x, (y - 8), obj_smoke))
    {
        if (global.apariencia == 1)
            sprite_index = spr_SMB3_splash_lava
        else if (global.apariencia == 2)
            sprite_index = spr_splash_lava
        depth = -10
    }
    modo_lava = 1
}
if (instance_exists(obj_lava_water) && ((y > (obj_lava_water.y + 16)) && ((global.bg_level == "forest") && (global.modo_noche == 1))))
{
    with (instance_create(x, (y - 8), obj_smoke))
    {
        if (global.apariencia == 1)
            sprite_index = spr_SMB3_splash_lava_purple
        else if (global.apariencia == 2)
            sprite_index = spr_splash_lava_purple
        depth = -10
    }
    modo_lava = 1
}
if ((global.bg_level == "underwater") || (((global.modo_noche == 1) && (global.bg_level == "sky")) || (((global.modo_noche == 1) && (global.bg_level == "airship")) || (instance_exists(obj_lava_water) && ((y > (obj_lava_water.y + 14)) && ((global.bg_level == "forest") && (global.modo_noche == 0)))))))
    swimming = 1
else
    swimming = 0
if (girar == 1)
{
    if ((swimming == 1) || (modo_lava == 1))
        image_angle -= (4 * sign(hspeed))
    else
        image_angle -= (16 * sign(hspeed))
}
if collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom, obj_quicksand, 0, 0)
{
    depth = 10
    hspeed = 0
    if (vspeed < 0)
        vspeed = 0
    else
    {
        gravity = 0.08
        if (vspeed > 0.08)
            vspeed = 0.08
    }
}
if (vspeed > 0)
{
    if ((swimming == 1) || (modo_lava == 1))
    {
        if ((sprite_index == spr_bowser_walk) || (sprite_index == spr_SMB3_bowser_deads))
        {
            gravity = 0.03
            if (vspeed > 0.4)
                vspeed = 0.4
        }
        else
        {
            gravity = 0.03
            if (vspeed > 0.5)
                vspeed = 0.5
        }
    }
    else if ((sprite_index == spr_blooper_deads) || ((sprite_index == spr_SMB3_blooper_deads) || (sprite_index == spr_SMB_blooper_deads)))
    {
        gravity = 0.1
        if (vspeed > 1)
            vspeed = 1
    }
    else
    {
        gravity = 0.2
        if (vspeed > 4)
            vspeed = 4
    }
    if (instance_exists(obj_lava_water) && ((y <= (obj_lava_water.y + 16)) && ((obj_lava_water.vspeed > 0) && ((modo_lava == 1) || (swimming == 1)))))
        y = (obj_lava_water.y + 16)
    if ((y > (__view_get( e__VW.YView, 0 ) + 248)) || ((vspeed > 0) && (instance_exists(obj_lava_water) && ((y > (obj_lava_water.y + 32)) && ((global.bg_level == "castle") || ((global.bg_level == "forest") && (global.modo_noche == 1)))))))
        instance_destroy()
}
if (modo_lava == 1)
    hspeed = 0
else if ((hspeed > 1) && (hspeed < 2))
    hspeed = 1
else if ((hspeed > -2) && (hspeed < -1))
    hspeed = -1

