var shoot;
image_speed = 0
image_index = 0
if ((sprite_index == spr_pplant_fire_up) || ((sprite_index == spr_SMB3_pplant_fire_up) || ((sprite_index == spr_SMB_pplant_fire_up) || ((sprite_index == spr_hielaplant_fire_up) || (sprite_index == spr_SMB3_hielaplant_fire_up)))))
{
    posy_fire = (y - 11)
    if (direct == 1)
        posx_fire = (x + 10)
    else
        posx_fire = (x - 10)
}
else if ((sprite_index == spr_pplant_fire_down) || ((sprite_index == spr_SMB3_pplant_fire_down) || ((sprite_index == spr_SMB_pplant_fire_down) || ((sprite_index == spr_hielaplant_fire_down) || (sprite_index == spr_SMB3_hielaplant_fire_down)))))
{
    posy_fire = (y - 6)
    if (direct == 1)
        posx_fire = (x + 10)
    else
        posx_fire = (x - 10)
}
audio_play_sound(snd_podoboo, 0, false)
shoot = instance_create(posx_fire, posy_fire, obj_plantfire)
if instance_exists(obj_mario)
{
    if ((__background_get( e__BG.Index, 0 ) == scr_bg_underwater()) || (((global.modo_noche == 1) && (__background_get( e__BG.Index, 0 ) == scr_bg_airship())) || ((global.modo_noche == 1) && (__background_get( e__BG.Index, 0 ) == scr_bg_sky()))))
    {
        shoot.hspeed = (0.5 * sign(direct))
        if (obj_mario.y < (y - 16))
            shoot.vspeed = -0.3
        else
            shoot.vspeed = 0.3
    }
    else
    {
        shoot.hspeed = (1 * sign(direct))
        if (obj_mario.y < (y - 16))
            shoot.vspeed = -0.5
        else
            shoot.vspeed = 0.5
    }
}
alarm[3] = 30
alarm[2] = 120

