if (((!held) && ((other.object_index != obj_banzaibill) && ((other.object_index != obj_bulletbull_red) && ((other.object_index != obj_fire_clown) && ((other.object_index != obj_cap) && ((other.object_index != obj_podoboo) && ((other.object_index != obj_angrysun) && ((other.object_index != obj_yoshifire) && ((other.object_index != obj_yoshifire_one) && ((other.object_index != obj_cheepcheep) && ((other.object_index != obj_thwomp) && ((other.object_index != obj_grinder) && ((other.object_index != obj_boo) && ((other.object_index != obj_cannonball) && ((other.object_index != obj_cannonball_red) && ((other.object_index != obj_helmet) && ((other.object_index != obj_helmet_spiny) && ((other.object_index != obj_player_goal_smb1) && ((other.object_index != obj_player_goal_smw_castle) && ((other.object_index != obj_magikoopa) && (other.object_index != obj_parcarry))))))))))))))))))))) || (((other.object_index == obj_player_goal_smb1) && ((other.ready == 2) || (other.ready == 3))) || ((other.object_index == obj_player_goal_smw_castle) && (other.fall == 1))))
{
    if ((other.bbox_bottom < ((bbox_top - vspeed) + 5)) && (other.vspeed > 0))
    {
        if ((global.bg_level == "underwater") || (((global.bg_level == "sky") && (global.modo_noche == 1)) || (instance_exists(obj_lava_water) && ((other.y > (obj_lava_water.y + 16)) && ((global.bg_level == "forest") && (global.modo_noche == 0))))))
        {
            if ((other.object_index == obj_clown) || ((other.object_index == obj_clown_fire) || ((other.object_index == obj_jumppiranha) && (global.apariencia == 2))))
                other.vspeed = -0.5
            else
                other.vspeed = -3.625
        }
        else if ((other.object_index == obj_clown) || ((other.object_index == obj_clown_fire) || ((other.object_index == obj_jumppiranha) && (global.apariencia == 2))))
            other.vspeed = -1.5
        else
            other.vspeed = -5.225
        if (image_speed == 0)
            image_speed = 0.3
        audio_stop_sound(scr_snd_spring())
        audio_play_sound(scr_snd_spring(), 0, false)
    }
}

