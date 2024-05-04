with (other.id)
{
    if (instance_exists(obj_mario) && (obj_mario.sprite_index == scr_marioclimb()))
        depth = -9
    else if (global.yoshi > 0)
    {
        s_cap_stay = spr_cap_stay_yoshi
        s_cap_stay_start = spr_cap_stay_start_yoshi
        s_cap_start_stay = spr_cap_start_stay_yoshi
        depth = -10
    }
    else
    {
        s_cap_stay = spr_cap_stay
        s_cap_stay_start = spr_cap_stay_start
        s_cap_start_stay = spr_cap_start_stay
        if instance_exists(obj_mario_transform2)
            depth = -7
        else
            depth = -4
    }
    if ((cap_invisible == 1) || (instance_exists(obj_kuribo_drybones) && (obj_kuribo_drybones.invincible == 1)))
    {
        visible = 0
        if instance_exists(obj_mario)
        {
            image_speed = 0
            direct = obj_mario.direct
            x = obj_mario.x
            y = obj_mario.y
            capa_y = 0
        }
    }
    else if (instance_exists(obj_mario_transform2) && (ready_cap == 1))
    {
        if instance_exists(obj_mario)
        {
            image_speed = 0
            direct = obj_mario.direct
            x = obj_mario.x
            y = obj_mario.y
            capa_y = 0
        }
    }
    else if instance_exists(obj_mario)
    {
        if (obj_mario.modo_vuelo == 1)
        {
            visible = 0
            image_speed = 0
            direct = 1
            x = obj_mario.x
            y = obj_mario.y
            capa_y = 0
        }
        else if ((obj_mario.sprite_index == scr_mariowarp()) && (global.yoshi == 0))
        {
            if (place_free(x, (y + 1)) && (obj_mario.vspeed > 0))
            {
                sprite_index = spr_cap_spinjump_fall
                image_speed = 0
                image_index = obj_mario.image_index
            }
            else
            {
                sprite_index = spr_cap_spinjump
                image_speed = 0
                image_index = obj_mario.image_index
            }
            direct = 1
            x = obj_mario.x
            y = obj_mario.y
            capa_y = 0
        }
        else if (obj_mario.sprite_index == scr_marioclimb())
        {
            sprite_index = spr_cap_climb
            if (obj_mario.speed == 0)
                image_speed = 0
            else
                image_speed = 0.15
            direct = 1
            x = obj_mario.x
            y = obj_mario.y
            capa_y = 0
        }
        else
        {
            if (obj_mario.turning == 1)
            {
                sprite_index = spr_cap_climb
                x = obj_mario.x
                y = obj_mario.y
                capa_y = 0
                direct = 1
                image_speed = 0
                image_index = 0
            }
            else if (obj_mario.sprite_index == scr_mariorunjump())
            {
                sprite_index = spr_cap_run
                image_speed = abs((obj_mario.hspeed / 10))
                if (global.yoshi == 0)
                {
                    direct = obj_mario.direct
                    x = obj_mario.x
                    y = obj_mario.y
                    capa_y = 0
                }
                else
                {
                    if instance_exists(obj_yoshi2)
                    {
                        if (obj_yoshi2.direct == 1)
                            x = (obj_mario.x - 4)
                        else
                            x = (obj_mario.x + 4)
                        direct = obj_yoshi2.direct
                    }
                    else if instance_exists(obj_kuribo_drybones)
                    {
                        if (obj_mario.direct == 1)
                            x = (obj_mario.x - 4)
                        else
                            x = (obj_mario.x + 4)
                        direct = obj_mario.direct
                    }
                    y = (obj_mario.y - 10)
                    capa_y = -10
                }
            }
            else if (((obj_mario.sprite_index == scr_marioswim()) || (obj_mario.sprite_index == scr_marioswimhold())) && ((obj_mario.state == 2) && ((obj_mario.isswim == 1) && (obj_mario.vspeed < 0))))
            {
                sprite_index = spr_cap_run
                image_speed = 0.12
                if (global.yoshi == 0)
                {
                    direct = obj_mario.direct
                    x = obj_mario.x
                    y = obj_mario.y
                    capa_y = 0
                }
                else
                {
                    if instance_exists(obj_yoshi2)
                    {
                        if (obj_yoshi2.direct == 1)
                            x = (obj_mario.x - 4)
                        else
                            x = (obj_mario.x + 4)
                        direct = obj_yoshi2.direct
                    }
                    else if instance_exists(obj_kuribo_drybones)
                    {
                        if (obj_mario.direct == 1)
                            x = (obj_mario.x - 4)
                        else
                            x = (obj_mario.x + 4)
                        direct = obj_mario.direct
                    }
                    y = (obj_mario.y - 10)
                    capa_y = -10
                }
            }
            else if (((obj_mario.sprite_index == scr_mariohold()) && ((obj_mario.pmeter > 5) && ((obj_mario.stompstyle == 0) && (obj_mario.vspeed != 0)))) || ((global.yoshi > 0) && ((obj_mario.pmeter > 5) && ((obj_mario.stompstyle == 0) && (obj_mario.vspeed != 0)))))
            {
                sprite_index = spr_cap_run
                image_speed = abs((obj_mario.hspeed / 10))
                if (global.yoshi == 0)
                {
                    direct = obj_mario.direct
                    x = obj_mario.x
                    y = obj_mario.y
                    capa_y = 0
                }
                else
                {
                    if instance_exists(obj_yoshi2)
                    {
                        if (obj_yoshi2.direct == 1)
                            x = (obj_mario.x - 4)
                        else
                            x = (obj_mario.x + 4)
                        direct = obj_yoshi2.direct
                    }
                    else if instance_exists(obj_kuribo_drybones)
                    {
                        if (obj_mario.direct == 1)
                            x = (obj_mario.x - 4)
                        else
                            x = (obj_mario.x + 4)
                        direct = obj_mario.direct
                    }
                    y = (obj_mario.y - 10)
                    capa_y = -10
                }
            }
            else
            {
                if (obj_mario.state == 2)
                {
                    if (global.yoshi > 0)
                    {
                        if instance_exists(obj_yoshi2)
                            direct = obj_yoshi2.direct
                        else if instance_exists(obj_kuribo_drybones)
                            direct = obj_mario.direct
                    }
                    else
                        direct = obj_mario.direct
                    if (place_free(x, (y + 1)) && (obj_mario.vspeed > 0))
                    {
                        if (sprite_index != spr_cap_fall)
                        {
                            sprite_index = spr_cap_stay_fall
                            image_speed = abs((obj_mario.vspeed / 8))
                        }
                        else
                            image_speed = 0.4
                    }
                    else if (sprite_index != s_cap_stay)
                    {
                        sprite_index = s_cap_start_stay
                        image_speed = 0.1
                    }
                    else
                    {
                        image_speed = 0
                        image_index = 0
                    }
                }
                else if ((obj_mario.state == 1) && (obj_mario.hspeed < 0))
                {
                    if (obj_mario.sprite_index == scr_marioskid())
                        direct = 1
                    else if (global.yoshi > 0)
                    {
                        if instance_exists(obj_yoshi2)
                            direct = obj_yoshi2.direct
                    }
                    else
                        direct = obj_mario.direct
                    if ((sprite_index == spr_cap_fall) || (sprite_index == spr_cap_spinjump_fall))
                    {
                        sprite_index = s_cap_start_stay
                        image_speed = 0.1
                    }
                    else if (sprite_index != spr_cap_run)
                    {
                        sprite_index = s_cap_stay_start
                        image_speed = 0.1
                    }
                    else
                        image_speed = abs((obj_mario.hspeed / 10))
                }
                else if ((obj_mario.state == 1) && (obj_mario.hspeed > 0))
                {
                    if (obj_mario.sprite_index == scr_marioskid())
                        direct = -1
                    else if (global.yoshi > 0)
                    {
                        if instance_exists(obj_yoshi2)
                            direct = obj_yoshi2.direct
                        else if instance_exists(obj_kuribo_drybones)
                            direct = obj_mario.direct
                    }
                    else
                        direct = obj_mario.direct
                    if ((sprite_index == spr_cap_fall) || (sprite_index == spr_cap_spinjump_fall))
                    {
                        sprite_index = s_cap_start_stay
                        image_speed = 0.1
                    }
                    else if (sprite_index != spr_cap_run)
                    {
                        sprite_index = s_cap_stay_start
                        image_speed = 0.1
                    }
                    else
                        image_speed = abs((obj_mario.hspeed / 10))
                }
                else if ((obj_mario.state == 1) && (((obj_mario.hspeed > 0) || (obj_mario.hspeed < 0)) && (sprite_index == spr_cap_run)))
                {
                    image_speed = abs((obj_mario.hspeed / 10))
                    if (global.yoshi > 0)
                    {
                        if instance_exists(obj_yoshi2)
                            direct = obj_yoshi2.direct
                    }
                    else
                        direct = obj_mario.direct
                }
                else if (((obj_mario.state == 0) && ((obj_mario.hspeed == 0) && (sprite_index == spr_cap_run))) || (((obj_mario.state == 0) && ((obj_mario.hspeed == 0) && (sprite_index == spr_cap_spinjump))) || (((obj_mario.state == 0) && ((obj_mario.hspeed == 0) && (sprite_index == spr_cap_fall))) || ((obj_mario.state == 0) && ((obj_mario.hspeed == 0) && (sprite_index == spr_cap_spinjump_fall))))))
                {
                    image_index = 0
                    image_speed = 0.1
                    sprite_index = s_cap_start_stay
                    if (global.yoshi > 0)
                    {
                        if instance_exists(obj_yoshi2)
                            direct = obj_yoshi2.direct
                    }
                    else
                        direct = obj_mario.direct
                }
                else
                {
                    if (global.yoshi > 0)
                    {
                        if instance_exists(obj_yoshi2)
                            direct = obj_yoshi2.direct
                    }
                    else
                        direct = obj_mario.direct
                    if ((sprite_index != s_cap_stay_start) && (sprite_index != s_cap_start_stay))
                    {
                        if (sprite_index != s_cap_stay)
                        {
                            sprite_index = s_cap_start_stay
                            image_speed = 0.1
                        }
                        else
                        {
                            image_speed = 0
                            image_index = 0
                        }
                    }
                    else
                        image_speed = 0.1
                }
                if (global.yoshi == 0)
                {
                    x = obj_mario.x
                    y = obj_mario.y
                    capa_y = 0
                }
                else if instance_exists(obj_yoshi2)
                {
                    if (obj_yoshi2.direct == 1)
                        x = (obj_mario.x - 4)
                    else
                        x = (obj_mario.x + 4)
                    if ((obj_yoshi2.licking == 1) && (obj_yoshi2.jumping == 0))
                    {
                        y = (obj_mario.y - 6)
                        capa_y = -6
                    }
                    else
                    {
                        y = (obj_mario.y - 10)
                        capa_y = -10
                    }
                }
                else if instance_exists(obj_kuribo_drybones)
                {
                    if (obj_mario.direct == 1)
                        x = (obj_mario.x - 4)
                    else
                        x = (obj_mario.x + 4)
                    x = obj_mario.x
                    y = (obj_mario.y - 2)
                    capa_y = -2
                }
            }
            if (obj_mario.isduck == 1)
            {
                if (global.yoshi == 0)
                {
                    x = obj_mario.x
                    y = obj_mario.y
                    capa_y = 0
                }
                else
                {
                    if instance_exists(obj_yoshi2)
                    {
                        if (obj_yoshi2.direct == 1)
                            x = (obj_mario.x - 4)
                        else
                            x = (obj_mario.x + 4)
                    }
                    else if instance_exists(obj_kuribo_drybones)
                    {
                        if (obj_mario.direct == 1)
                            x = (obj_mario.x - 4)
                        else
                            x = (obj_mario.x + 4)
                    }
                    y = (obj_mario.y - 2)
                    capa_y = -2
                }
                if (place_free(x, (y + 1)) && (obj_mario.vspeed > 0))
                {
                    if (obj_mario.isduckhold == 1)
                    {
                        y = (obj_mario.y + 5)
                        capa_y = 5
                    }
                    else
                    {
                        y = (obj_mario.y + 5)
                        capa_y = 5
                    }
                }
            }
        }
        ready_cap = 1
    }
    else if instance_exists(obj_player_goal_smw)
    {
        visible = 1
        direct = obj_player_goal_smw.direct
        if ((obj_player_goal_smw.pose == 1) && (global.yoshi > 0))
            depth = -4
        if (obj_player_goal_smw.hspeed > 0)
        {
            if ((sprite_index == spr_cap_fall) || (sprite_index == spr_cap_spinjump_fall))
            {
                sprite_index = s_cap_start_stay
                image_speed = 0.1
            }
            else if (sprite_index != spr_cap_run)
            {
                sprite_index = s_cap_stay_start
                image_speed = 0.1
            }
            else
                image_speed = abs((obj_player_goal_smw.hspeed / 10))
        }
        else if (obj_player_goal_smw.sprite_index == scr_mariogoal())
        {
            sprite_index = s_cap_stay_start
            image_speed = 0
            image_index = 0
        }
        else if (obj_player_goal_smw.vspeed != 0)
        {
            if (place_free(x, (y + 1)) && (obj_player_goal_smw.vspeed > 0))
            {
                if (sprite_index != spr_cap_fall)
                {
                    sprite_index = spr_cap_stay_fall
                    image_speed = abs((obj_player_goal_smw.vspeed / 8))
                }
                else
                    image_speed = 0.4
            }
            else if (sprite_index != s_cap_stay)
            {
                sprite_index = s_cap_start_stay
                image_speed = 0.1
            }
            else
            {
                image_speed = 0
                image_index = 0
            }
        }
        else if ((sprite_index != s_cap_stay_start) && (sprite_index != s_cap_start_stay))
        {
            if (sprite_index != s_cap_stay)
            {
                sprite_index = s_cap_start_stay
                image_speed = 0.1
            }
            else
            {
                image_speed = 0
                image_index = 0
            }
        }
        else
            image_speed = 0.1
        if (global.yoshi == 0)
        {
            x = obj_player_goal_smw.x
            y = obj_player_goal_smw.y
            capa_y = 0
        }
        else
        {
            if (obj_player_goal_smw.direct == 1)
                x = (obj_player_goal_smw.x - 4)
            else
                x = (obj_player_goal_smw.x + 4)
            y = (obj_player_goal_smw.y - 10)
            capa_y = -10
        }
    }
}

