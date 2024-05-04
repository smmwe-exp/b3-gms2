if (sprite_index == spr_NSMBU_mario_small_dead2)
{
    if (image_index < 23)
        image_speed = 0.6
    else
    {
        sprite_index = spr_NSMBU_mario_small_dead3
        image_index = 0
        image_speed = 0.6
    }
}
if ((global.bg_level == "underwater") || (((global.modo_noche == 1) && (global.bg_level == "sky")) || (((global.modo_noche == 1) && (global.bg_level == "airship")) || (instance_exists(obj_lava_water) && ((y > (obj_lava_water.y + 16)) && ((global.bg_level == "forest") && (global.modo_noche == 0)))))))
{
    if (vspeed > 1)
    {
        vspeed = 1
        gravity = 0
    }
}
else if (vspeed > 4)
{
    vspeed = 4
    gravity = 0
}
event_user(0)

