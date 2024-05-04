if ((!held) && (ready2 == 0))
{
    if ((other.bbox_bottom < ((bbox_top - vspeed) + 5)) && (other.vspeed > 0))
    {
        image_speed = 0.3
        with (other.id)
        {
            hspeed = 0
            vspeed = 0
            if keyboard_check(global.abajo)
            {
                if ((global.apariencia == 1) || (global.apariencia == 3))
                {
                    if (holding != 2)
                        isduck = 1
                }
                else if (global.apariencia == 2)
                {
                    if (holding == 2)
                    {
                        isduck = 1
                        isduckhold = 1
                    }
                    else
                        isduck = 1
                }
            }
        }
        ready = 1
        ready2 = 1
        with (other.id)
        {
            stompstyle = 0
            jumping = 0
            if (object_index == obj_marioU)
            {
                triple_jump = 0
                triple_count = 0
                airspin = 0
                airspin_count = 0
                groundpount = 0
                walljump = 0
                disablecontrols = 0
            }
        }
    }
    else if (scr_canhold() && ((ready2 == 0) && ((inwall == 0) && (other.bbox_bottom > bbox_top))))
    {
        other.holding = 2
        held = 1
        if (global.apariencia == 3)
        {
            audio_play_sound(choose(441, 442), 0, false)
            with (other.id)
            {
                triple_jump = 0
                triple_count = 0
            }
        }
        speed = 0
        gravity = 0
    }
}
if ready
{
    obj_mario.state = 0
    obj_mario.jumpnow = 0
    obj_mario.y = ((y + (image_index * 4)) - 32)
}

