if ((inenemy == 0) && (inmario == 0))
{
    if ((other.bbox_bottom < ((bbox_top - vspeed) + 5)) && ((other.vspeed > 0) && (other.object_index != obj_grinder)))
    {
        if (((other.object_index == obj_mushroom) || ((other.object_index == obj_1up) || ((other.object_index == obj_fireflower) || ((other.object_index == obj_superflower) || ((other.object_index == obj_megamushroom) || ((other.object_index == obj_hen_mushroom) || ((other.object_index == obj_star) || ((other.object_index == obj_egg) || (other.object_index == obj_egg_red))))))))) && (other.paracaidas == 1))
            exit
        inenemy = 1
        sprite_index = s_clown_evil
        audio_play_sound(snd_clown_in, 0, false)
        enemyobject = other.id
        other.innave = 1
        with (other.id)
        {
            gravity = 0
            if (vspeed > 0)
                vspeed = 0
        }
    }
}

