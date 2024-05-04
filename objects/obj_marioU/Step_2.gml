var steps_sound, jump_number;
if instance_exists(obj_levelmanager)
    pmeter = obj_levelmanager.pmeter
if (airspin > 1)
{
    if (airspin >= 8)
        airspin = 0
    else
        airspin += 0.7
}
if ((state == 1) && ((isduck == 0) && ((skidnow == 0) && (global.bg_level != "underwater"))))
{
    if (pmeter > 6)
        steps_sound = 7
    else if (abs(hspeed) <= 1)
        steps_sound = 20
    else if (abs(hspeed) <= 1.6)
        steps_sound = 15
    else if (abs(hspeed) > 1.6)
        steps_sound = 10
    if (steps_count == 0)
    {
        if ((global.bg_level == "ground") || ((global.bg_level == "forest") || ((global.bg_level == "snow") || (global.bg_level == "sky"))))
        {
            if (collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + 1), obj_modelsolid, 0, 0) || (collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + 1), obj_ground2, 0, 0) || collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + 1), obj_ground3, 0, 0)))
            {
                if (step_inter == 0)
                    audio_play_sound(snd_NSMBU_step_normal1, 0, false)
                else
                    audio_play_sound(snd_NSMBU_step_normal2, 0, false)
            }
            else if (step_inter == 0)
                audio_play_sound(snd_NSMBU_step_block1, 0, false)
            else
                audio_play_sound(snd_NSMBU_step_block2, 0, false)
        }
        else if (global.bg_level == "airship")
        {
            if (collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + 1), obj_ground2, 0, 0) || collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + 1), obj_ground3, 0, 0))
            {
                if (step_inter == 0)
                    audio_play_sound(snd_NSMBU_step_normal1, 0, false)
                else
                    audio_play_sound(snd_NSMBU_step_normal2, 0, false)
            }
            else if collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + 1), obj_modelsolid, 0, 0)
            {
                if (step_inter == 0)
                    audio_play_sound(snd_NSMBU_step_airship, 0, false)
                else
                    audio_play_sound(snd_NSMBU_step_airship2, 0, false)
            }
            else if (step_inter == 0)
                audio_play_sound(snd_NSMBU_step_block1, 0, false)
            else
                audio_play_sound(snd_NSMBU_step_block2, 0, false)
        }
        else if (step_inter == 0)
            audio_play_sound(snd_NSMBU_step_block1, 0, false)
        else
            audio_play_sound(snd_NSMBU_step_block2, 0, false)
        if (step_inter == 0)
            step_inter = 1
        else
            step_inter = 0
        steps_count = steps_sound
    }
    else
        steps_count--
}
else
{
    steps_count = 0
    step_inter = 0
}
if ((iamkicking == 1) && ((stompstyle == 0) && (isduck == 0)))
{
    sprite_index = scr_NSMBU_kick()
    if (image_index < 15)
        image_speed = 1
    else
    {
        if (state == 2)
        {
            sprite_index = scr_NSMBU_fall2()
            image_speed = 0
            image_index = 8
            jump_type = 2
        }
        iamkicking = 0
    }
}
else if (isduck == 0)
{
    if (global.powerup == 0)
        mask_index = spr_smallmask
    else
        mask_index = spr_bigmask
    if ((global.powerup == 2) || (global.powerup == -49))
    {
        if (firing > 0)
            firing--
    }
    else
        firing = 0
    if (holding == 0)
    {
        if ((state < 2) && ((pmeter > 5) && (((direct == 1) && ((hspeed < 0) && keyboard_check(global.derecha))) || ((direct == -1) && ((hspeed > 0) && keyboard_check(global.izquierda))))))
        {
            sprite_index = scr_NSMBU_skid()
            image_speed = 0
            if (direct == 1)
                image_index = 1
            else
                image_index = 0
            if (skidnow == 0)
            {
                skidnow = 1
                skid_nsmbu = 1
                audio_play_sound(scr_snd_skid(), 1, true)
            }
        }
        else if ((skidnow == 1) && ((state < 2) && ((direct == 1) && ((hspeed > 0) && keyboard_check(global.derecha)))))
        {
            if (sprite_index != scr_NSMBU_skid_right())
            {
                sprite_index = scr_NSMBU_skid_right()
                image_index = 0
                audio_stop_sound(scr_snd_skid())
            }
            if (image_index < 6)
                image_speed = 0.6
            else
            {
                sprite_index = scr_NSMBU_runmax()
                image_index = 0
                hspeed = 2.1
                if instance_exists(obj_levelmanager)
                {
                    with (obj_levelmanager)
                        pmeter = 6
                }
                skidnow = 0
            }
        }
        else if ((skidnow == 1) && ((state < 2) && ((direct == -1) && ((hspeed < 0) && keyboard_check(global.izquierda)))))
        {
            if (sprite_index != scr_NSMBU_skid_left())
            {
                sprite_index = scr_NSMBU_skid_left()
                image_index = 0
                audio_stop_sound(scr_snd_skid())
            }
            if (image_index < 6)
                image_speed = 0.6
            else
            {
                sprite_index = scr_NSMBU_runmax()
                image_index = 0
                hspeed = -2.1
                if instance_exists(obj_levelmanager)
                {
                    with (obj_levelmanager)
                        pmeter = 6
                }
                skidnow = 0
            }
        }
        else if (state == 0)
        {
            if (groundpount > 1)
            {
                if (groundpount > 6)
                {
                    if keyboard_check(global.abajo)
                    {
                        sprite_index = scr_NSMBU_crouch_idle()
                        image_index = 0
                        groundpount = 0
                        disablecontrols = 0
                    }
                    else
                    {
                        if (sprite_index != scr_NSMBU_standup())
                        {
                            sprite_index = scr_NSMBU_standup()
                            image_index = 0
                        }
                        if (image_index < 14)
                            image_speed = 0.6
                        else
                        {
                            image_speed = 0
                            image_index = 14
                            groundpount = 0
                            disablecontrols = 0
                        }
                    }
                }
                else
                {
                    sprite_index = scr_NSMBU_groundpound_stop()
                    image_speed = 0
                    image_index = 0
                    if (groundpount == 2)
                    {
                        with (instance_create(x, y, obj_smoke))
                        {
                            sprite_index = spr_NSMBU_smoke_groundpound
                            direct = 1
                            image_speed = 0.5
                            depth = -10
                        }
                        with (instance_create(x, y, obj_smoke))
                        {
                            sprite_index = spr_NSMBU_smoke_groundpound
                            direct = -1
                            image_speed = 0.5
                            depth = -10
                        }
                        audio_play_sound(snd_NSMBU_groundpount_stop, 0, false)
                    }
                    if keyboard_check(global.abajo)
                        groundpount += 0.3
                    else
                        groundpount++
                }
            }
            else if (firing > 0)
            {
                image_speed = 0
                if ((firing < 6) && (firing > 3))
                    image_index = 1
                else
                {
                    image_index = 0
                    sprite_index = scr_marioshoot()
                }
            }
            else
            {
                if (isswim == 1)
                    sprite_index = scr_NSMBU_idle()
                else if ((sprite_index != scr_NSMBU_idle()) && ((sprite_index != scr_NSMBU_ground_idle()) && ((sprite_index != scr_NSMBU_flip()) && (sprite_index != scr_NSMBU_flip_start()))))
                {
                    if ((sprite_index != scr_NSMBU_fall1()) && ((sprite_index != scr_NSMBU_fall2()) && ((sprite_index != scr_NSMBU_fall3()) && (sprite_index != scr_NSMBU_spinjump()))))
                        image_index = 5
                    else
                    {
                        image_index = 0
                        if (gravity == 0)
                        {
                            if (!audio_is_playing(snd_NSMBU_standup))
                                audio_play_sound(snd_NSMBU_standup, 0, false)
                        }
                    }
                    sprite_index = scr_NSMBU_ground_idle()
                }
                if (sprite_index == scr_NSMBU_ground_idle())
                {
                    if (image_index < 10)
                        image_speed = 0.5
                    else
                        sprite_index = scr_NSMBU_idle()
                }
                else if (sprite_index == scr_NSMBU_idle())
                {
                    if (isswim == 0)
                    {
                        if (flip_count < 600)
                            flip_count++
                        else
                        {
                            sprite_index = scr_NSMBU_flip_start()
                            flip_count = 0
                        }
                    }
                    image_speed = 0.5
                }
                else if (sprite_index == scr_NSMBU_flip_start())
                {
                    if (image_index < 3)
                        image_speed = 0.5
                    else
                        sprite_index = scr_NSMBU_flip()
                }
                else if (sprite_index == scr_NSMBU_flip())
                    image_speed = 0.5
            }
        }
        else if (state == 1)
        {
            if (firing > 0)
            {
                image_speed = 0
                if ((firing < 6) && (firing > 3))
                    image_index = 1
                else
                {
                    image_index = 0
                    sprite_index = scr_marioshoot()
                }
            }
            else if (pmeter < 6)
            {
                if (abs(hspeed) <= 1.6)
                {
                    if ((sprite_index == scr_NSMBU_skid_right()) || (sprite_index == scr_NSMBU_skid_left()))
                    {
                        if (image_index < 6)
                            image_speed = 0.5
                        else
                        {
                            sprite_index = scr_NSMBU_walk()
                            image_speed = 0.4
                        }
                    }
                    else
                    {
                        sprite_index = scr_NSMBU_walk()
                        if ((global.bg_level == "snow") && (global.modo_noche == 1))
                        {
                            if (abs(hspeed) == 1.5)
                                image_speed = 1
                            else
                                image_speed = 0.8
                        }
                        else if (abs(hspeed) == 1.5)
                            image_speed = 0.6
                        else
                            image_speed = 0.4
                    }
                }
                else
                {
                    sprite_index = scr_NSMBU_run()
                    if ((global.bg_level == "snow") && (global.modo_noche == 1))
                    {
                        if (abs(hspeed) < 1.9)
                            image_speed = 0.8
                        else
                            image_speed = 1.1
                    }
                    else if (abs(hspeed) < 1.9)
                        image_speed = 0.4
                    else
                        image_speed = 0.7
                }
            }
            else
            {
                if (polvo < 5)
                    polvo++
                else
                {
                    if (hspeed > 0)
                    {
                        with (instance_create((x - 20), (y + 18), obj_smoke))
                            image_speed = 0.8
                    }
                    else if (hspeed < 0)
                    {
                        with (instance_create((x + 4), (y + 18), obj_smoke))
                            image_speed = 0.8
                    }
                    polvo = 0
                }
                sprite_index = scr_NSMBU_runmax()
                image_speed = 1
            }
        }
        else if (state == 2)
        {
            if (isswim == 1)
            {
                if (noisy == 0)
                {
                    if (vspeed < 0)
                    {
                        if (sprite_index != scr_NSMBU_swim())
                        {
                            sprite_index = scr_NSMBU_swim()
                            image_index = 0
                        }
                        image_speed = 0.5
                    }
                    else
                    {
                        if (sprite_index != scr_NSMBU_swim_fall())
                        {
                            sprite_index = scr_NSMBU_swim_fall()
                            image_index = 0
                        }
                        image_speed = 0.5
                    }
                }
            }
            else if ((walljump == 1) && (stompstyle == 0))
            {
                sprite_index = scr_NSMBU_wall_slide()
                image_speed = 0
                if (direct == 1)
                    image_index = 0
                else
                    image_index = 1
            }
            else if (groundpount != 0)
            {
                if (sprite_index != scr_NSMBU_groundpound())
                {
                    sprite_index = scr_NSMBU_groundpound()
                    image_index = 0
                }
                if (image_index < 9)
                    image_speed = 1
                else
                {
                    image_speed = 0
                    image_index = 9
                    if (groundpount != 2)
                        groundpount = 2
                }
            }
            else if (triple_jump > 1)
            {
                if (triple_jump == 2)
                {
                    if ((sprite_index != scr_NSMBU_triple_jump0()) && ((sprite_index != scr_NSMBU_triple_jump1()) && ((sprite_index != scr_NSMBU_airspin1()) && (sprite_index != scr_NSMBU_airspin2()))))
                    {
                        if (choose(0, 1) == 0)
                        {
                            sprite_index = scr_NSMBU_triple_jump0()
                            image_index = 0
                            triple_number = 38
                        }
                        else
                        {
                            sprite_index = scr_NSMBU_triple_jump1()
                            image_index = 0
                            triple_number = 37
                        }
                    }
                }
                else
                {
                    if ((sprite_index != scr_NSMBU_triple_jump2()) && ((sprite_index != scr_NSMBU_airspin1()) && (sprite_index != scr_NSMBU_airspin2())))
                    {
                        sprite_index = scr_NSMBU_triple_jump2()
                        image_index = 0
                    }
                    triple_number = 43
                }
                if (image_index < triple_number)
                    image_speed = 0.6
                else
                {
                    image_speed = 0
                    image_index = triple_number
                }
                if (airspin == 1)
                {
                    if ((image_speed == 0) && (image_index == triple_number))
                    {
                        if (direct == 1)
                            sprite_index = scr_NSMBU_airspin1()
                        else
                            sprite_index = scr_NSMBU_airspin2()
                        image_index = 0
                        image_speed = 0.7
                    }
                    airspin_count += 0.7
                    if (airspin_count >= 9.8)
                    {
                        if (triple_jump == 2)
                        {
                            if ((sprite_index == scr_NSMBU_airspin1()) || (sprite_index == scr_NSMBU_airspin2()))
                            {
                                if (triple_number == 38)
                                {
                                    sprite_index = scr_NSMBU_triple_jump0()
                                    image_index = triple_number
                                }
                                else
                                {
                                    sprite_index = scr_NSMBU_triple_jump1()
                                    image_index = triple_number
                                }
                            }
                        }
                        else if ((sprite_index == scr_NSMBU_airspin1()) || (sprite_index == scr_NSMBU_airspin2()))
                        {
                            sprite_index = scr_NSMBU_triple_jump2()
                            image_index = triple_number
                        }
                        airspin = 2
                        airspin_count = 0
                    }
                }
            }
            else if (airspin == 1)
            {
                if (direct == 1)
                {
                    if ((sprite_index != scr_NSMBU_airspin1()) && (sprite_index != scr_NSMBU_airspin2()))
                    {
                        sprite_index = scr_NSMBU_airspin1()
                        image_index = 0
                    }
                    else if (sprite_index == scr_NSMBU_airspin2())
                        sprite_index = scr_NSMBU_airspin1()
                }
                else if ((sprite_index != scr_NSMBU_airspin2()) && (sprite_index != scr_NSMBU_airspin1()))
                {
                    sprite_index = scr_NSMBU_airspin2()
                    image_index = 0
                }
                else if (sprite_index == scr_NSMBU_airspin1())
                    sprite_index = scr_NSMBU_airspin2()
                airspin_count += 0.7
                if (airspin_count < 9.8)
                    image_speed = 0.7
                else
                {
                    if (vspeed < 0)
                    {
                        jump_type = 3
                        sprite_index = scr_NSMBU_jump3()
                        image_speed = 0
                        image_index = 17
                    }
                    else if (vspeed > 0)
                    {
                        jump_type = 3
                        sprite_index = scr_NSMBU_fall3()
                        image_speed = 0
                        image_index = 5
                    }
                    airspin = 2
                    airspin_count = 0
                }
            }
            else if (stompstyle == 1)
            {
                if (sprite_index != scr_NSMBU_spinjump())
                {
                    sprite_index = scr_NSMBU_spinjump()
                    image_index = 0
                }
                image_speed = 1
            }
            else if (firing > 0)
            {
                image_speed = 0
                if ((firing < 6) && (firing > 3))
                    image_index = 1
                else
                    image_index = 0
                sprite_index = scr_marioshoot()
            }
            else if (sprite_index == scr_NSMBU_groundpound_canceled())
            {
                if (image_index < 4)
                    image_speed = 0.6
                else
                {
                    sprite_index = scr_NSMBU_fall2()
                    image_speed = 0
                    image_index = 8
                    jump_type = 2
                }
            }
            else if ((place_free(x, (y + 1)) && (vspeed > 0)) || collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_bortice, 0, 0))
            {
                if (jump_type == 1)
                {
                    jump_number = 10
                    if (sprite_index != scr_NSMBU_fall1())
                    {
                        sprite_index = scr_NSMBU_fall1()
                        if (jumpnow == 0)
                            image_index = 4
                        else
                            image_index = 0
                    }
                }
                else if (jump_type == 2)
                {
                    jump_number = 8
                    if (sprite_index != scr_NSMBU_fall2())
                    {
                        sprite_index = scr_NSMBU_fall2()
                        if (jumpnow == 0)
                            image_index = 3
                        else
                            image_index = 0
                    }
                }
                else
                {
                    jump_number = 8
                    if (sprite_index != scr_NSMBU_fall3())
                    {
                        sprite_index = scr_NSMBU_fall3()
                        if (jumpnow == 0)
                            image_index = 4
                        else
                            image_index = 0
                    }
                }
                if (image_index != jump_number)
                    image_speed = 0.5
                else
                {
                    image_speed = 0
                    image_index = jump_number
                }
            }
            else
            {
                if (jump_type == 0)
                    jump_type = choose(1, 2, 3)
                if (jump_type == 1)
                {
                    jump_number = 17
                    if (sprite_index != scr_NSMBU_jump1())
                    {
                        sprite_index = scr_NSMBU_jump1()
                        image_index = 0
                    }
                }
                else if (jump_type == 2)
                {
                    jump_number = 16
                    if (sprite_index != scr_NSMBU_jump2())
                    {
                        sprite_index = scr_NSMBU_jump2()
                        image_index = 0
                    }
                }
                else
                {
                    jump_number = 17
                    if (sprite_index != scr_NSMBU_jump3())
                    {
                        sprite_index = scr_NSMBU_jump3()
                        image_index = 0
                    }
                }
                if (image_index != jump_number)
                    image_speed = 0.5
                else
                {
                    image_speed = 0
                    image_index = jump_number
                }
            }
        }
    }
    else
    {
        if (state == 0)
        {
            if ((sprite_index != scr_NSMBU_hold()) && (sprite_index != scr_NSMBU_hold_ground()))
            {
                if ((sprite_index != scr_NSMBU_hold_jump()) && (sprite_index != scr_NSMBU_hold_spinjump()))
                    image_index = 7
                else
                {
                    image_index = 0
                    if (gravity == 0)
                    {
                        if (!audio_is_playing(snd_NSMBU_standup))
                            audio_play_sound(snd_NSMBU_standup, 0, false)
                    }
                }
                sprite_index = scr_NSMBU_hold_ground()
            }
            else if (sprite_index == scr_NSMBU_hold_ground())
            {
                if (image_index < 12)
                    image_speed = 0.5
                else
                    sprite_index = scr_NSMBU_hold()
            }
            else
            {
                if (sprite_index != scr_NSMBU_hold())
                {
                    sprite_index = scr_NSMBU_hold()
                    image_index = 0
                }
                image_speed = 0.5
            }
        }
        if (state == 1)
        {
            if (sprite_index != scr_NSMBU_walkhold())
            {
                sprite_index = scr_NSMBU_walkhold()
                image_index = 0
            }
            if (pmeter < 6)
            {
                if (abs(hspeed) <= 1.6)
                {
                    if ((global.bg_level == "snow") && (global.modo_noche == 1))
                    {
                        if (abs(hspeed) == 1.5)
                            image_speed = 1
                        else
                            image_speed = 0.8
                    }
                    else if (abs(hspeed) == 1.5)
                        image_speed = 0.6
                    else
                        image_speed = 0.4
                }
                else if ((global.bg_level == "snow") && (global.modo_noche == 1))
                {
                    if (abs(hspeed) < 1.9)
                        image_speed = 0.8
                    else
                        image_speed = 1.1
                }
                else if (abs(hspeed) < 1.9)
                    image_speed = 0.4
                else
                    image_speed = 0.7
            }
            else
                image_speed = 1
        }
        if (state == 2)
        {
            if (airspin == 1)
            {
                if (direct == 1)
                {
                    if (sprite_index != scr_NSMBU_hold_airspin())
                    {
                        sprite_index = scr_NSMBU_hold_airspin()
                        image_index = 0
                    }
                }
                else if (sprite_index != scr_NSMBU_hold_airspin())
                {
                    sprite_index = scr_NSMBU_hold_airspin()
                    image_index = 0
                }
                airspin_count += 0.7
                if (airspin_count < 7.7)
                    image_speed = 0.7
                else
                {
                    jump_type = 3
                    sprite_index = scr_NSMBU_hold_jump()
                    image_speed = 0
                    image_index = 22
                    airspin = 2
                    airspin_count = 0
                }
            }
            else if (stompstyle == 1)
            {
                if (sprite_index != scr_NSMBU_hold_spinjump())
                {
                    sprite_index = scr_NSMBU_hold_spinjump()
                    image_index = 0
                }
                image_speed = 1
            }
            else
            {
                if (sprite_index != scr_NSMBU_hold_jump())
                {
                    sprite_index = scr_NSMBU_hold_jump()
                    image_index = 0
                }
                if (image_index < 22)
                    image_speed = 0.6
                else
                {
                    image_speed = 0
                    image_index = 22
                }
            }
        }
    }
    if (state == 3)
    {
        sprite_index = scr_marioclimb()
        if (global.apariencia == 0)
        {
            if (vspeed == 0)
            {
                image_speed = 0
                image_index = 0
            }
            else
                image_speed = 0.15
        }
        else if (global.apariencia == 1)
        {
            if (speed == 0)
                image_speed = 0
            else
                image_speed = 0.25
        }
        else if (global.apariencia == 2)
        {
            if (speed == 0)
            {
                image_speed = 0
                image_index = 2
            }
            else
                image_speed = 0.25
        }
    }
}
else if (isduck == 1)
{
    if (global.powerup == 0)
        mask_index = spr_smallduckmask
    else
        mask_index = spr_smallmask
    if (airspin == 1)
    {
        if (sprite_index != scr_NSMBU_spincrouch())
        {
            sprite_index = scr_NSMBU_spincrouch()
            image_index = 0
        }
        airspin_count += 0.7
        if (airspin_count < 9.8)
            image_speed = 0.7
        else
        {
            sprite_index = scr_NSMBU_crouch_idle()
            image_speed = 0.5
            airspin = 2
            airspin_count = 0
        }
    }
    else if (state == 2)
    {
        if (sprite_index != scr_NSMBU_crouch_jump())
        {
            sprite_index = scr_NSMBU_crouch_jump()
            image_index = 0
        }
        if (image_index < 25)
            image_speed = 0.5
        else
        {
            image_speed = 0
            image_index = 25
        }
    }
    else
    {
        if (sprite_index == scr_NSMBU_crouch_jump())
        {
            sprite_index = scr_NSMBU_crouch_fall()
            image_index = 0
        }
        else if (sprite_index == scr_NSMBU_crouch_fall())
        {
            if (image_index < 7)
                image_speed = 0.5
            else
            {
                sprite_index = scr_NSMBU_crouch_idle()
                image_index = 0
                image_speed = 0.5
            }
        }
        else if ((sprite_index != scr_NSMBU_crouch()) && (sprite_index != scr_NSMBU_crouch_idle()))
        {
            sprite_index = scr_NSMBU_crouch()
            image_index = 0
            if (gravity == 0)
            {
                audio_stop_sound(snd_NSMBU_duck)
                audio_play_sound(snd_NSMBU_duck, 0, false)
            }
        }
        if (sprite_index == scr_NSMBU_crouch_idle())
            image_speed = 0.5
        else if (sprite_index != scr_NSMBU_crouch_fall())
        {
            if (image_index != 2)
                image_speed = 1
            else
            {
                sprite_index = scr_NSMBU_crouch_idle()
                image_speed = 0.5
            }
        }
        if (keyboard_check(global.derecha) && ((!keyboard_check(global.izquierda)) && (disablecontrols == 0)))
            direct = 1
        else if (keyboard_check(global.izquierda) && ((!keyboard_check(global.derecha)) && (disablecontrols == 0)))
            direct = -1
    }
}
if ((sprite_index != scr_NSMBU_skid()) && ((sprite_index != scr_NSMBU_skid_right()) && ((sprite_index != scr_NSMBU_skid_left()) && ((skidnow == 1) && (!instance_exists(obj_mario_transform2))))))
{
    audio_stop_sound(scr_snd_skid())
    skidnow = 0
}

