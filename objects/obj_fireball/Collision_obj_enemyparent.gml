if (other.object_index != obj_grinder)
{
    if ((other.hardness == 0) && ((other.object_index != obj_buzzybeetle) && ((other.object_index != obj_bobomb) && ((other.object_index != obj_shell_kamikaze) && ((other.object_index != obj_chain_chomp_free) && (((other.object_index != obj_cheepcheep) || ((other.object_index == obj_cheepcheep) && (other.modo_lava == 0))) && ((other.object_index != obj_cheepcheep2) || ((other.object_index == obj_cheepcheep2) && (other.modo_lava == 0)))))))))
    {
        audio_play_sound(scr_snd_kick(), 0, false)
        if (object_index == obj_fire_clown)
        {
            with (instance_create((x + 8), (y - 2), obj_smoke))
                sprite_index = spr_spinthump
            hspeed = prevhspeed
        }
        with (instance_create(other.x, other.y, obj_score))
            event_user(0)
        with (other.id)
            event_user(0)
    }
    if (((other.hardness < 100) && (other.object_index != obj_bobomb)) || ((other.object_index == obj_buzzybeetle) || ((other.object_index == obj_shell_kamikaze) || ((other.object_index == obj_chain_chomp_free) || (((other.object_index == obj_cheepcheep) && (other.modo_lava == 1)) || ((other.object_index == obj_cheepcheep2) && (other.modo_lava == 1)))))))
        event_user(0)
}

