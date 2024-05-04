var clown_col;
if ((disablecontrols == 0) && (((holding == 0) || ((holding == 3) && (global.yoshi == 2))) && (stompstyle == 0)))
{
    if ((global.powerup == -40) && ((!instance_exists(obj_spinner)) && keyboard_check(global.abajo)))
        instance_create(x, y, obj_statue)
    else if (isduck == 0)
    {
        if ((global.powerup == 3) && (global.yoshi == 0))
        {
            clown_col = collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_clown_fire, 0, 0)
            if (clown_col && (clown_col.inmario == 1))
                exit
            else
            {
                audio_stop_sound(snd_spin)
                audio_play_sound(snd_spin, 0, false)
                caped = 1
                alarm[11] = 25
            }
        }
        else if (global.powerup == 2)
        {
            if (instance_number(obj_fireball) < 2)
            {
                clown_col = collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_clown_fire, 0, 0)
                if (clown_col && (clown_col.inmario == 1))
                    exit
                else
                {
                    firing = 9
                    if (isswim == 0)
                    {
                        if (global.apariencia == 0)
                        {
                            with (instance_create(x, (y + 12), obj_fireball))
                                hspeed = (4.5 * other.direct)
                        }
                        else
                        {
                            with (instance_create(x, (y + 16), obj_fireball))
                                hspeed = (4.5 * other.direct)
                        }
                    }
                    else if (global.apariencia == 0)
                    {
                        with (instance_create(x, (y + 12), obj_fireball))
                            hspeed = (3 * other.direct)
                    }
                    else
                    {
                        with (instance_create(x, (y + 16), obj_fireball))
                            hspeed = (3 * other.direct)
                    }
                }
            }
            else if (stompstyle == 1)
                alarm[10] = 2
        }
        else if ((global.powerup == -50) && (instance_number(obj_superball) < 1))
        {
            clown_col = collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_clown_fire, 0, 0)
            if (clown_col && (clown_col.inmario == 1))
                exit
            else
            {
                firing = 9
                if (isswim == 0)
                {
                    with (instance_create(x, (y + 12), obj_superball))
                        hspeed = (4.5 * other.direct)
                }
                else
                {
                    with (instance_create(x, (y + 12), obj_superball))
                        hspeed = (3 * other.direct)
                }
            }
        }
        else if ((global.powerup == -39) && ((sprite_index != scr_mariojumpstar()) && ((!instance_exists(obj_spinner)) && (global.yoshi == 0))))
        {
            clown_col = collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_clown_fire, 0, 0)
            if (clown_col && (clown_col.inmario == 1))
                exit
            else
                instance_create(x, y, obj_spinner)
        }
        else if ((global.powerup == -47) && (instance_number(obj_minibomb) < 1))
        {
            firing = 9
            with (instance_create((x - 4), (y + 16), obj_minibomb))
                hspeed = ((1.5 * other.direct) + other.hspeed)
        }
        else if (((global.powerup == -49) || ((global.powerup == -38) && (isswim == 0))) && (!instance_exists(obj_iceball)))
        {
            firing = 9
            with (instance_create(x, (y + 16), obj_iceball))
                hspeed = (3 * other.direct)
        }
        else if ((global.powerup == -41) && (instance_number(obj_shuriken) < 2))
        {
            firing = 9
            with (instance_create(x, (y + 20), obj_shuriken))
                hspeed = (5 * other.direct)
        }
        else if ((global.powerup == -48) && (instance_number(obj_boomerang_b) < 2))
        {
            firing = 9
            with (instance_create((x - 8), (y + 16), obj_boomerang_b))
                hspeed = (1.5 * other.direct)
        }
        else if ((global.powerup == -52) && (!instance_exists(obj_rockroller)))
            instance_create(x, (y + 10), obj_rockroller)
        else if ((global.powerup == -51) && (instance_number(obj_pyreball) < 2))
        {
            firing = 9
            with (instance_create(x, (y + 16), obj_pyreball))
                hspeed = (3 * other.direct)
        }
        else if ((global.powerup == -53) && (!instance_exists(obj_karateattack)))
            instance_create(x, y, obj_karateattack)
    }
}

