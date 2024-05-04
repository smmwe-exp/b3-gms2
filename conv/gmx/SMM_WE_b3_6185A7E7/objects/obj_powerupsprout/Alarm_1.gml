if ((place_meeting(x, (y - 16), obj_solid) || (place_meeting(x, (y - 16), obj_pinchos) || (place_meeting(x, (y - 16), obj_cannon) || place_meeting(x, (y - 16), obj_muncher)))) && ((sprite_index != spr_SMB_mushroom) && ((sprite_index != spr_SMB3_mushroom) && ((sprite_index != spr_mushroom) && ((sprite_index != spr_SMB_hen_mushroom) && ((sprite_index != spr_SMB_1up) && ((sprite_index != spr_SMB3_1up) && ((sprite_index != spr_1up) && ((sprite_index != spr_SMB_rotten) && ((sprite_index != spr_SMB3_rotten) && ((sprite_index != spr_rotten) && ((sprite_index != spr_SMB_fireflower) && ((sprite_index != spr_SMB_superflower) && ((sprite_index != spr_SMB3_fireflower) && (sprite_index != spr_fireflower)))))))))))))))
{
    alarm[0] = -1
    event_user(0)
    instance_destroy()
}
else
{
    if ((sprite_index == spr_cap) || ((sprite_index == spr_leaf) || ((sprite_index == spr_SMB_megamushroom) && (global.apariencia != 0))))
    {
        audio_play_sound(scr_snd_sprout(), 0, false)
        with (instance_create(xstart, (ystart - 16), obj_cap))
            up = 1
    }
    else if (((sprite_index == spr_SMB_megamushroom) || ((sprite_index == spr_cap) || (sprite_index == spr_leaf))) && (global.apariencia == 0))
    {
        audio_play_sound(scr_snd_sprout(), 0, false)
        with (instance_create((xstart + 16), (ystart - 16), obj_megamushroom))
        {
            vspeed = -1.6
            y--
        }
    }
    else if (sprite_index == spr_egg)
    {
        audio_play_sound(scr_snd_sprout(), 0, false)
        with (instance_create(xstart, (ystart - 16), obj_egg))
        {
            vspeed = -1.6
            y--
        }
    }
    else if (sprite_index == spr_egg_red)
    {
        audio_play_sound(scr_snd_sprout(), 0, false)
        with (instance_create(xstart, (ystart - 16), obj_egg_red))
        {
            vspeed = -1.6
            y--
        }
    }
    else if ((sprite_index == spr_SMB_goomba_shoe) || (sprite_index == spr_SMB3_goomba_shoe))
    {
        audio_play_sound(scr_snd_sprout(), 0, false)
        with (instance_create((xstart + 8), (ystart - 16), obj_egg))
        {
            vspeed = -1.6
            y--
        }
    }
    else if ((sprite_index == spr_SMB_goomba_shoe_red) || (sprite_index == spr_SMB3_goomba_shoe_red))
    {
        audio_play_sound(scr_snd_sprout(), 0, false)
        with (instance_create((xstart + 8), (ystart - 16), obj_egg_red))
        {
            vspeed = -1.6
            y--
        }
    }
    else if ((sprite_index == spr_key) || (sprite_index == spr_SMB3_key))
    {
        audio_play_sound(scr_snd_sprout(), 0, false)
        instance_create(xstart, (ystart - 16), obj_key_appear)
    }
    else if ((sprite_index == spr_pink_coin) || (sprite_index == spr_SMB3_pink_coin))
    {
        with (instance_create(xstart, (ystart - 16), obj_pink_coin))
            event_user(0)
    }
    else if ((sprite_index == spr_koopa) || ((sprite_index == spr_SMB3_koopa) || (sprite_index == spr_SMB_koopa)))
    {
        audio_play_sound(scr_snd_sprout(), 0, false)
        with (instance_create((xstart + 8), (ystart - 16), obj_koopa))
        {
            vspeed = -1
            y--
        }
    }
    else if ((sprite_index == spr_koopa_red) || ((sprite_index == spr_SMB3_koopa_red) || (sprite_index == spr_SMB_koopa_red)))
    {
        audio_play_sound(scr_snd_sprout(), 0, false)
        with (instance_create((xstart + 8), (ystart - 16), obj_koopa_red))
        {
            vspeed = -1
            y--
        }
    }
    else if ((sprite_index == spr_spiny) || ((sprite_index == spr_SMB3_spiny) || (sprite_index == spr_SMB_spiny)))
    {
        audio_play_sound(scr_snd_sprout(), 0, false)
        with (instance_create((xstart + 8), (ystart - 16), obj_spiny))
        {
            vspeed = -1
            y--
        }
    }
    else if ((sprite_index == spr_buzzybeetle) || ((sprite_index == spr_SMB3_buzzybeetle) || ((sprite_index == spr_SMB3_buzzybeetle_night) || ((sprite_index == spr_SMB_buzzybeetle) || (sprite_index == spr_SMB_buzzybeetle_night)))))
    {
        audio_play_sound(scr_snd_sprout(), 0, false)
        with (instance_create((xstart + 8), (ystart - 16), obj_buzzybeetle))
        {
            vspeed = -1
            y--
        }
    }
    else if ((sprite_index == spr_cheepcheep) || ((sprite_index == spr_SMB3_cheepcheep) || (sprite_index == spr_SMB_cheepcheep)))
    {
        audio_play_sound(scr_snd_sprout(), 0, false)
        with (instance_create((xstart + 8), (ystart - 16), obj_cheepcheep))
        {
            vspeed = -1
            y--
        }
    }
    else if ((sprite_index == spr_cheepcheep2) || ((sprite_index == spr_SMB3_cheepcheep2) || (sprite_index == spr_SMB_cheepcheep2)))
    {
        audio_play_sound(scr_snd_sprout(), 0, false)
        with (instance_create((xstart + 8), (ystart - 16), obj_cheepcheep2))
        {
            vspeed = -1
            y--
        }
    }
    else if ((sprite_index == spr_galoomba) || ((sprite_index == spr_SMB3_goomba) || (sprite_index == spr_SMB_goomba)))
    {
        audio_play_sound(scr_snd_sprout(), 0, false)
        with (instance_create((xstart + 8), (ystart - 16), obj_galoomba))
        {
            vspeed = -1
            y--
        }
    }
    else if ((sprite_index == spr_galoomba2) || ((sprite_index == spr_SMB3_goomba2) || (sprite_index == spr_SMB_goomba2)))
    {
        audio_play_sound(scr_snd_sprout(), 0, false)
        with (instance_create((xstart + 8), (ystart - 16), obj_galoomba2))
        {
            vspeed = -1
            y--
        }
    }
    else if ((sprite_index == spr_bobomb) || ((sprite_index == spr_SMB3_bobomb) || ((sprite_index == spr_SMB3_bobomb_night) || ((sprite_index == spr_SMB_bobomb) || (sprite_index == spr_SMB_bobomb_night)))))
    {
        audio_play_sound(scr_snd_sprout(), 0, false)
        with (instance_create((xstart + 8), (ystart - 16), obj_bobomb))
        {
            vspeed = -1
            y--
        }
    }
    else if ((sprite_index == spr_bobomb_ready) || ((sprite_index == spr_SMB3_bobomb_ready) || (sprite_index == spr_SMB_bobomb_ready)))
    {
        audio_play_sound(scr_snd_sprout(), 0, false)
        with (instance_create((xstart + 8), (ystart - 16), obj_bobomb_ready))
        {
            vspeed = -1
            y--
        }
    }
    else if ((sprite_index == spr_hammerbro) || ((sprite_index == spr_SMB3_hammerbro) || (sprite_index == spr_SMB_hammerbro)))
    {
        audio_play_sound(scr_snd_sprout(), 0, false)
        with (instance_create((xstart + 8), (ystart - 16), obj_hammerbro))
        {
            vspeed = -1
            y--
        }
    }
    else if ((sprite_index == spr_boo) || ((sprite_index == spr_SMB3_boo) || (sprite_index == spr_SMB_boo)))
    {
        audio_play_sound(scr_snd_sprout(), 0, false)
        with (instance_create((xstart + 8), (ystart - 18), obj_boo))
            vspeed = 0
    }
    else if ((sprite_index == spr_muncher) || ((sprite_index == spr_SMB3_muncher) || ((sprite_index == spr_SMB3_muncher_night) || ((sprite_index == spr_SMB_muncher) || (sprite_index == spr_SMB_muncher_night)))))
    {
        audio_play_sound(scr_snd_sprout(), 0, false)
        with (instance_create(xstart, (ystart - 16), obj_muncher))
        {
            vspeed = -1
            y--
        }
    }
    else if ((sprite_index == spr_montymole) || ((sprite_index == spr_SMB3_montymole) || (sprite_index == spr_SMB_montymole)))
    {
        audio_play_sound(scr_snd_sprout(), 0, false)
        with (instance_create((xstart + 8), (ystart - 16), obj_monty_chase))
        {
            vspeed = -1
            y--
        }
    }
    else if ((sprite_index == spr_jumppiranha) || ((sprite_index == spr_SMB3_pplant) || (sprite_index == spr_SMB_pplant)))
    {
        audio_play_sound(scr_snd_sprout(), 0, false)
        with (instance_create(xstart, (ystart - 16), obj_jumppiranha))
        {
            vspeed = -0.5
            y--
        }
    }
    else if ((sprite_index == spr_drybones) || ((sprite_index == spr_SMB3_drybones) || (sprite_index == spr_SMB_drybones)))
    {
        audio_play_sound(scr_snd_sprout(), 0, false)
        with (instance_create((xstart + 8), (ystart - 16), obj_drybones))
        {
            vspeed = -1
            y--
        }
    }
    else if ((sprite_index == spr_podoboo) || ((sprite_index == spr_SMB3_podoboo) || (sprite_index == spr_SMB_podoboo)))
    {
        audio_play_sound(scr_snd_sprout(), 0, false)
        with (instance_create(xstart, (ystart - 16), obj_podoboo))
        {
            vspeed = -2.5
            y--
        }
    }
    else if ((sprite_index == spr_sledgebro) || (sprite_index == spr_SMB3_sledgebro))
    {
        audio_play_sound(scr_snd_sprout(), 0, false)
        with (instance_create((xstart + 8), (ystart - 16), obj_sledgebro))
        {
            vspeed = -1
            y--
        }
    }
    else if ((sprite_index == spr_pplant_fire_down) || ((sprite_index == spr_SMB3_pplant_fire_down) || (sprite_index == spr_SMB_pplant_fire_down)))
    {
        audio_play_sound(scr_snd_sprout(), 0, false)
        with (instance_create((xstart + 8), (ystart - 16), obj_plant_fire))
        {
            vspeed = -1
            y--
        }
    }
    else if ((sprite_index == spr_spring) || ((sprite_index == spr_SMB3_spring) || (sprite_index == spr_SMB_spring)))
    {
        audio_play_sound(scr_snd_sprout(), 0, false)
        with (instance_create(xstart, (ystart - 16), obj_spring))
        {
            vspeed = -0.5
            y--
        }
    }
    else if ((sprite_index == spr_pswitch) || ((sprite_index == spr_SMB3_pswitch) || (sprite_index == spr_SMB_pswitch)))
    {
        audio_play_sound(scr_snd_sprout(), 0, false)
        with (instance_create(xstart, (ystart - 16), obj_pswitch))
        {
            vspeed = -0.5
            y--
        }
    }
    else if ((sprite_index == spr_block_pow) || ((sprite_index == spr_SMB3_pow) || (sprite_index == spr_SMB_pow)))
    {
        audio_play_sound(scr_snd_sprout(), 0, false)
        with (instance_create(xstart, (ystart - 16), obj_block_pow_hold))
        {
            vspeed = -1.5
            y--
        }
    }
    else if ((sprite_index == spr_spring_land) || ((sprite_index == spr_SMB3_spring_land) || (sprite_index == spr_SMB_spring_land)))
    {
        audio_play_sound(scr_snd_sprout(), 0, false)
        with (instance_create(xstart, (ystart - 16), obj_spring_land))
        {
            vspeed = -1
            y--
        }
    }
    else if ((sprite_index == spr_clown) || ((sprite_index == spr_SMB3_clown) || (sprite_index == spr_SMB_clown)))
    {
        audio_play_sound(scr_snd_sprout(), 0, false)
        with (instance_create((xstart + 8), (ystart - 16), obj_clown))
        {
            vspeed = -0.5
            y--
        }
    }
    else if ((sprite_index == spr_clown_fire) || ((sprite_index == spr_SMB3_clown_fire) || (sprite_index == spr_SMB_clown_fire)))
    {
        audio_play_sound(scr_snd_sprout(), 0, false)
        with (instance_create((xstart + 8), (ystart - 16), obj_clown_fire))
        {
            vspeed = -0.5
            y--
        }
    }
    else if ((sprite_index == spr_shell_buzzy_empty) || ((sprite_index == spr_SMB3_shell_empty) || ((sprite_index == spr_SMB3_shell_empty_night) || ((sprite_index == spr_SMB_shell_empty) || (sprite_index == spr_SMB_shell_empty_night)))))
    {
        audio_play_sound(scr_snd_sprout(), 0, false)
        with (instance_create(xstart, (ystart - 16), obj_shell_empty))
        {
            vspeed = -1
            y--
        }
    }
    else if ((sprite_index == spr_shell_spiny_empty) || ((sprite_index == spr_SMB3_shell_spiny_empty) || (sprite_index == spr_SMB_shell_empty_spiny)))
    {
        audio_play_sound(scr_snd_sprout(), 0, false)
        with (instance_create(xstart, (ystart - 16), obj_spiny_empty))
        {
            vspeed = -1
            y--
        }
    }
    else
    {
        if (sprite_index == spr_SMB_superflower)
            audio_play_sound(snd_SMB_sprout_superflower, 0, false)
        else
            audio_play_sound(scr_snd_sprout(), 0, false)
        if ((sprite_index == spr_SMB_1up) || ((sprite_index == spr_SMB3_1up) || (sprite_index == spr_1up)))
            image_index = 1
        if ((sprite_index == spr_beanstalk) || ((sprite_index == spr_SMB3_beanstalk) || (sprite_index == spr_SMB_beanstalk)))
            instance_create(x, ystart, obj_beanstalk)
        else
            exit
    }
    instance_destroy()
}

