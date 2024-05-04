if ((other.object_index != obj_fire_clown) && ((other.object_index != obj_thwomp) && ((other.object_index != obj_banzaibill) && ((other.object_index != obj_bulletbull_red) && ((other.object_index != obj_cap) && ((other.object_index != obj_boo) && ((other.object_index != obj_spring_land) && ((other.object_index != obj_podoboo) && ((other.object_index != obj_yoshifire) && ((other.object_index != obj_yoshifire_one) && ((other.object_index != obj_blooper) && ((other.object_index != obj_bulletbill) && ((other.object_index != obj_bullebill_base) && ((other.object_index != obj_grinder) && ((other.object_index != obj_cheepcheep) && ((other.object_index != obj_cheepcheep2) && ((other.object_index != obj_cannonball) && ((other.object_index != obj_cannonball_red) && ((other.object_index != obj_muncher) && ((other.object_index != obj_fireball) && ((other.object_index != obj_pokey) && ((other.object_index != obj_floruga) && ((other.object_index != obj_floruga_body) && (other.object_index != obj_parcarry))))))))))))))))))))))))
{
    if (collision_rectangle(bbox_left, bbox_top, (bbox_right - 4), bbox_top, obj_physicsparent, 0, 0) && ((other.bbox_left + (bbox_right / 2)) < (bbox_left + (bbox_right / 2))))
    {
        if ((other.object_index == obj_clown) || (other.object_index == obj_clown_fire))
        {
            with (other.id)
            {
                if (sprite_index != s_clown_damage)
                    alarm[2] = 30
            }
        }
        if ((other.object_index == obj_buzzybeetle) || (other.object_index == obj_spiny))
        {
            with (other.id)
                inup = 0
        }
        if ((other.object_index != obj_buzzybeetle) && ((other.object_index != obj_spiny) && ((other.object_index != obj_clown) && (other.object_index != obj_clown_fire))))
            other.vspeed = -2.9
        other.hspeed = -3
        event_user(1)
    }
    else if (collision_rectangle((bbox_left - 4), bbox_top, bbox_right, bbox_top, obj_physicsparent, 0, 0) && ((other.bbox_left + (bbox_right / 2)) > (bbox_left + (bbox_right / 2))))
    {
        if ((other.object_index == obj_clown) || (other.object_index == obj_clown_fire))
        {
            with (other.id)
            {
                if (sprite_index != s_clown_damage)
                    alarm[2] = 30
            }
        }
        if ((other.object_index == obj_buzzybeetle) || (other.object_index == obj_spiny))
        {
            with (other.id)
                inup = 0
        }
        if ((other.object_index != obj_buzzybeetle) && ((other.object_index != obj_spiny) && ((other.object_index != obj_clown) && (other.object_index != obj_clown_fire))))
            other.vspeed = -2.9
        other.hspeed = 3
        if ((other.object_index == obj_galoomba_hold) || (other.object_index == obj_bobomb_hold))
            other.direct = 1
        event_user(1)
    }
}

