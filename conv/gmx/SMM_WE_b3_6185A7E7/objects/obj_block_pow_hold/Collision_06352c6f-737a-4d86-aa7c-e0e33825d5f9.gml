if (held == 0)
{
    if (scr_canhold() && ((!inwall) && ((inmune == 0) && ((other.bbox_bottom > (bbox_top + 5)) && (other.bbox_top < (bbox_bottom - 4))))))
    {
        other.holding = 2
        if (global.apariencia == 3)
        {
            audio_play_sound(choose(441, 442), 0, false)
            with (other.id)
            {
                triple_jump = 0
                triple_count = 0
            }
        }
        held = 1
        explode = 0
        depth = -7
        gravity = 0
        speed = 0
    }
}

