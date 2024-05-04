clown_smoke.x = x
clown_smoke.y = (y + 5)
clown_smoke.direct = direct
if (inmario == 1)
{
    if (carga == 1)
    {
        if instance_exists(obj_mario)
        {
            if keyboard_check(global.lanzar_agarrar)
            {
                carga = 1
                fire += 2
            }
            else
            {
                carga = 0
                audio_charge = 0
                sprite_index = s_clown
                audio_stop_sound(scr_snd_clown_fire_charge())
                if (fire > 120)
                {
                    if (global.powerup == 2)
                    {
                        if (instance_number(obj_fire_clown) < 3)
                        {
                            with (instance_create(x, y, obj_fire_clown))
                            {
                                vspeed = -0.5
                                hspeed = (3 * other.direct)
                                direct = other.direct
                            }
                            with (instance_create(x, y, obj_fire_clown))
                            {
                                vspeed = 0
                                hspeed = (3 * other.direct)
                                direct = other.direct
                            }
                            with (instance_create(x, y, obj_fire_clown))
                            {
                                vspeed = 0.5
                                hspeed = (3 * other.direct)
                                direct = other.direct
                            }
                            fire = 0
                        }
                    }
                    else if (instance_number(obj_fire_clown) < 2)
                    {
                        with (instance_create(x, y, obj_fire_clown))
                        {
                            hspeed = (3 * other.direct)
                            direct = other.direct
                            vspeed = 0
                        }
                        fire = 0
                    }
                }
                else if (global.powerup == 2)
                {
                    if (instance_number(obj_fire_clown_small) < 3)
                    {
                        with (instance_create(x, y, obj_fire_clown_small))
                        {
                            vspeed = -0.5
                            hspeed = (3 * other.direct)
                            gravity = 0
                        }
                        with (instance_create(x, y, obj_fire_clown_small))
                        {
                            vspeed = 0
                            hspeed = (3 * other.direct)
                            gravity = 0
                        }
                        with (instance_create(x, y, obj_fire_clown_small))
                        {
                            vspeed = 0.5
                            hspeed = (3 * other.direct)
                            gravity = 0
                        }
                        fire = 0
                    }
                }
                else if (instance_number(obj_fire_clown_small) < 1)
                {
                    with (instance_create(x, y, obj_fire_clown_small))
                    {
                        hspeed = (3 * other.direct)
                        gravity = 0
                        vspeed = 0
                    }
                    fire = 0
                }
                smoke_id.visible = 0
            }
        }
    }
}

