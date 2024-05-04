if instance_exists(obj_mario)
{
    if ((other.bbox_bottom < ((obj_mario.bbox_top - obj_mario.vspeed) + 5)) && (other.vspeed > 0))
        exit
    else if (((other.hardness < 99) && ((obj_mario.caped == 1) && (sprite_index == spr_cap_spinjump))) || (((other.hardness < 99) && ((obj_mario.stompstyle == 1) && (sprite_index == spr_cap_spinjump))) || (((other.object_index == obj_buzzybeetle) && ((obj_mario.caped == 1) && (sprite_index == spr_cap_spinjump))) || ((other.object_index == obj_buzzybeetle) && ((obj_mario.stompstyle == 1) && (sprite_index == spr_cap_spinjump))))))
    {
        if (other.object_index != obj_egg)
        {
            audio_play_sound(snd_kick, 0, false)
            with (instance_create(other.x, other.y, obj_score))
                event_user(0)
            if ((other.object_index == obj_koopa) || ((other.object_index == obj_koopa_red) || ((other.object_index == obj_galoomba) || ((other.object_index == obj_buzzybeetle) || ((other.object_index == obj_snow_ball_held) || ((other.object_index == obj_shell_held) || (other.object_index == obj_shell_kamikaze)))))))
            {
                with (other.id)
                    event_user(5)
            }
            else
            {
                with (other.id)
                    event_user(0)
            }
        }
    }
}

