if instance_exists(obj_mario)
{
    x = obj_mario.x
    y = (obj_mario.y + 16)
    obj_mario.visible = 0
    obj_mario.holding = 3
    if (keyboard_check_pressed(global.lanzar_agarrar) && ((licking == 0) && ((obj_mario.disablecontrols == 0) && (turning == 0))))
    {
        if ((mouthholder == -4) && (color == 0))
        {
            if (!audio_is_playing(snd_yoshi_lick))
                audio_play_sound(snd_yoshi_lick, 0, false)
            licking = 1
            alarm[0] = 5
            anim = 0
            if (obj_mario.vspeed == 0)
                locked = 2
            else
                locked = 1
        }
        else
            event_user(0)
    }
    if mouthholder
        event_user(3)
    obj_mario.mask_index = spr_bigmask
    if (obj_mario.state == 2)
        jumping = 1
    else
    {
        jumping = 0
        flutter = 0
        if (fluttertime > 0)
            fluttertime = 0
    }
}
else
{
    if instance_exists(obj_player_goal_smw)
    {
        visible = 0
        x = obj_player_goal_smw.x
        y = obj_player_goal_smw.y
        if (mouthholder != -4)
        {
            mouthholder = -4
            mouthsprite = -4
        }
    }
    event_user(15)
    if instance_exists(follow)
    {
        x = follow.x
        y = follow.y
        depth = follow.depth
    }
}
if instance_exists(obj_mario)
{
    if licking
    {
        if (obj_mario.vspeed == 0)
            locked = 2
        else
            locked = 1
        if (locked == 1)
        {
            if (flutter == 1)
            {
                sprite_index = s_yoshi_flutter_lick
                image_speed = 0.3
            }
            else
            {
                sprite_index = s_yoshi_swallow
                image_speed = 0
                if (obj_mario.vspeed != 0)
                {
                    if (obj_mario.vspeed < 0)
                        image_index = 1
                    else if (obj_mario.vspeed > 0)
                        image_index = 2
                }
                else
                    image_index = 0
            }
        }
        else
        {
            sprite_index = s_yoshi_lick
            image_speed = 0
            image_index = anim
        }
    }
    else if (turning != 0)
    {
        if (turn == 0)
        {
            image_index = 0
            turn = 1
        }
        if (mouthholder != -4)
        {
            sprite_index = spr_yoshi_fm_turning
            image_speed = 0.09
        }
        else if (mouthholder == -4)
        {
            sprite_index = spr_yoshi_turning
            image_speed = 0.09
        }
    }
    else if (!licking)
    {
        if (obj_mario.isduck == 1)
        {
            if (mouthholder != -4)
            {
                sprite_index = s_yoshi_fm_wait
                image_speed = 0
                image_index = 2
            }
            else if (mouthholder == -4)
            {
                sprite_index = s_yoshi_wait
                image_speed = 0
                image_index = 0
            }
        }
        else if (obj_mario.state == 0)
        {
            if (mouthholder != -4)
            {
                sprite_index = s_yoshi_fm
                image_speed = 0
                image_index = 0
            }
            else if (mouthholder == -4)
            {
                sprite_index = s_yoshi
                image_speed = 0
                image_index = 0
            }
        }
        else if (obj_mario.state == 1)
        {
            if (mouthholder != -4)
            {
                sprite_index = s_yoshi_fm
                if (!collision_rectangle(obj_mario.bbox_left, obj_mario.bbox_bottom, obj_mario.bbox_right, obj_mario.bbox_bottom, obj_slippery, 0, 1))
                    image_speed = (0.065 + (abs(obj_mario.hspeed) / 7.5))
                else
                    image_speed = (0.13 + (abs(obj_mario.hspeed) / 7.5))
            }
            else if (mouthholder == -4)
            {
                sprite_index = s_yoshi
                if (!collision_rectangle(obj_mario.bbox_left, obj_mario.bbox_bottom, obj_mario.bbox_right, obj_mario.bbox_bottom, obj_slippery, 0, 1))
                    image_speed = (0.065 + (abs(obj_mario.hspeed) / 7.5))
                else
                    image_speed = (0.13 + (abs(obj_mario.hspeed) / 7.5))
            }
        }
        else if (obj_mario.state == 2)
        {
            if (mouthholder != -4)
            {
                if (flutter == 1)
                {
                    sprite_index = s_yoshi_fm_flutter
                    image_speed = 0.3
                }
                else
                {
                    sprite_index = s_yoshi_fm_jump
                    image_speed = 0
                    if (obj_mario.vspeed < 0)
                        image_index = 0
                    else
                        image_index = 1
                }
            }
            else if (mouthholder == -4)
            {
                if (flutter == 1)
                {
                    sprite_index = s_yoshi_flutter
                    image_speed = 0.3
                }
                else
                {
                    sprite_index = s_yoshi_jump
                    image_speed = 0
                    if (obj_mario.vspeed < 0)
                        image_index = 0
                    else
                        image_index = 1
                }
            }
        }
    }
}
if instance_exists(obj_mario)
{
    x = obj_mario.x
    y = (obj_mario.y + 16)
    if licking
    {
        if (jumping == 0)
            f = 21
        else if (locked == 2)
            f = 21
        else
            f = 25
    }
    else if (turning == 1)
        f = 25
    else if (obj_mario.isduck == 1)
        f = 21
    else
        f = 25
    if ((turning == 0) && (licking == 0))
        direct = obj_mario.direct
}
if ((sprite_index == s_yoshi) || (sprite_index == s_yoshi_fm))
{
    if (image_index > 0.99)
        myy = 1
    else
        myy = 0
}
else
    myy = 0

