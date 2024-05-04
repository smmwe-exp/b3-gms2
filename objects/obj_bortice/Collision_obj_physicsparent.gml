if (((other.object_index != obj_grinder) && ((other.object_index != obj_banzaibill) && ((other.object_index != obj_bulletbill) && ((other.object_index != obj_bulletbull_red) && ((other.object_index != obj_fireball) && ((other.object_index != obj_boo) && ((other.object_index != obj_fire_clown) && ((other.object_index != obj_fire_clown_small) && ((other.object_index != obj_angrysun) && ((other.object_index != obj_torbellino) && ((other.object_index != obj_cap_mario) && ((other.object_index != obj_helmet) && ((other.object_index != obj_podoboo) && ((other.object_index != obj_yoshifire) && ((other.object_index != obj_yoshifire_one) && ((other.object_index != obj_cannon) && ((other.object_index != obj_cannon_red) && ((other.object_index != obj_cannonball) && ((other.object_index != obj_cannon) && ((other.object_index != obj_bullebill_base) && ((other.object_index != obj_player_goal_smb1) && ((other.object_index != obj_player_goal_smw_castle) && ((other.object_index != obj_magikoopa) && ((other.object_index != obj_cannonball_red) && ((other.object_index != obj_pokey) && ((other.object_index != obj_floruga) && ((other.object_index != obj_floruga_body) && (other.object_index != obj_parcarry)))))))))))))))))))))))))))) || (((other.bbox_bottom < bbox_top) && ((other.object_index == obj_player_goal_smb1) && ((other.ready == 2) || (other.ready == 3)))) || ((other.bbox_bottom < bbox_top) && ((other.object_index == obj_player_goal_smw_castle) && (other.fall == 1)))))
{
    if ((other.object_index == obj_clown) || (other.object_index == obj_clown_fire))
    {
        if (other.vspeed > 0)
            other.vspeed -= 0.2
        else if (other.y <= (y - 92))
        {
            other.vspeed--
            if (other.vspeed < -0.4)
                other.vspeed = -0.4
        }
        else
        {
            other.vspeed--
            if (other.vspeed < -0.3)
                other.vspeed = -0.3
        }
    }
    else if (other.vspeed > 0)
        other.vspeed -= 0.4
    else if (other.y <= (y - 92))
    {
        other.vspeed--
        if (other.vspeed < -3)
            other.vspeed = -3
    }
    else
    {
        other.vspeed--
        if (other.vspeed < -2)
            other.vspeed = -2
    }
}

