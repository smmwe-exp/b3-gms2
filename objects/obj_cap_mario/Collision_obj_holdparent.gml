if instance_exists(obj_mario)
{
    if (((obj_mario.caped == 1) && (((sprite_index == spr_cap_spinjump) || (sprite_index == spr_cap_spinjump_fall)) && ((other.object_index != obj_helmet) && (other.object_index != obj_helmet_spiny)))) || ((obj_mario.stompstyle == 1) && (((sprite_index == spr_cap_spinjump) || (sprite_index == spr_cap_spinjump_fall)) && ((other.object_index != obj_helmet) && (other.object_index != obj_helmet_spiny)))))
    {
        if (other.object_index == obj_shell)
        {
            with (other.id)
                event_user(7)
        }
        else
        {
            with (other.id)
                event_user(5)
        }
    }
}

