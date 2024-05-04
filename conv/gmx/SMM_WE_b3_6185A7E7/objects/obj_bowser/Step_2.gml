if (obj_levelmanager.editor == 1)
{
    if (global.apariencia == 1)
        sprite_index = spr_SMB3_bowser_walk
    else if (global.apariencia == 2)
        sprite_index = spr_bowser_walk
}
if ((herido == 1) && (gravity == 0))
{
    if (global.apariencia == 1)
    {
        alarm[4] = -1
        alarm[10] = 2
        alarm[5] = choose(240, 360, 180, 240)
    }
    else if (global.apariencia == 2)
    {
        alarm[0] = 2
        alarm[1] = 2
        alarm[4] = -1
        alarm[5] = 2
        alarm[3] = 20
    }
    herido = 0
}
if ((obj_levelmanager.editor == 0) && (global.apariencia == 2))
{
    if ((gravity == 0) && ((sprite_index != spr_bowser_fire) && ((sprite_index != spr_bowser_turning) && ((sprite_index != spr_bowser_fire_up) && (sprite_index != spr_bowser_prepare_fire)))))
    {
        sprite_index = spr_bowser_walk
        if (innave == 1)
        {
            image_speed = 0
            image_index = 0
        }
        else
            image_speed = 0.08
    }
    else if ((gravity != 0) && (sprite_index != spr_bowser_fire))
    {
        sprite_index = spr_bowser_jump
        image_speed = 0.15
    }
    if ((__background_get( e__BG.Index, 0 ) == scr_bg_underwater()) || (((__background_get( e__BG.Index, 0 ) == scr_bg_sky()) && (global.modo_noche == 1)) || ((__background_get( e__BG.Index, 0 ) == scr_bg_airship()) && (global.modo_noche == 1))))
    {
        if (hspeed > 0.2)
        {
            hspeed -= 0.08
            if (hspeed <= 0.2)
                hspeed = 0.2
        }
        else if (hspeed < -0.2)
        {
            hspeed += 0.08
            if (hspeed >= -0.2)
                hspeed = -0.2
        }
    }
    else if (hspeed > 0.2)
    {
        hspeed -= 0.08
        if (hspeed <= 0.2)
            hspeed = 0.2
    }
    else if (hspeed < -0.2)
    {
        hspeed += 0.08
        if (hspeed >= -0.2)
            hspeed = -0.2
    }
}
if (obj_levelmanager.editor == 0)
{
    if ((gravity == 0) && (sprite_index == spr_SMB3_bowser_walk))
    {
        image_speed = 0
        image_index = 1
    }
    else if ((gravity != 0) && (sprite_index == spr_SMB3_bowser_walk))
    {
        image_speed = 0
        image_index = 0
    }
}
if (firehitpoints == 0)
    event_user(0)
if (parar > 0)
{
    parar--
    if (parar == 1)
    {
        aplastar2 = 0
        parar = 0
        event_user(1)
    }
}
if instance_exists(obj_mario)
{
    if (((aplastar == 1) && ((obj_mario.x > (x - 24)) && ((obj_mario.x < (x + 24)) && (vspeed != 0)))) || ((aplastar == 1) && (vspeed > 0)))
    {
        aplastar2 = 1
        sprite_index = spr_SMB3_bowser_attack
        image_speed = 0
        image_index = 0
        hspeed = 0
    }
    else if ((aplastar2 == 1) && ((sprite_index == spr_SMB3_bowser_attack) && ((image_index == 0) && ((vspeed == 0) && (gravity == 0)))))
    {
        instance_create((x - 8), (y + 8), obj_smoke)
        instance_create((x + 8), (y + 8), obj_smoke)
        sprite_index = spr_SMB3_bowser_attack
        image_index = 1
        search = 1
        aplastar = 0
        big_jump = 0
        gravity = 0
        audio_play_sound(snd_SMB3_thwomp, 0, false)
        if instance_exists(obj_mario)
        {
            if (obj_mario.state < 2)
            {
                with (obj_mario)
                {
                    if (!instance_exists(obj_shake_mario))
                        instance_create(x, (y + 5), obj_shake_mario)
                    stuntime = 120
                    shake = 1
                    hspeed = 0
                    disablecontrols = 1
                }
            }
        }
        alarm[2] = 20
    }
}

