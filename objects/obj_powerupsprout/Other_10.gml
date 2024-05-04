if ((sprite_index == spr_cap) || ((sprite_index == spr_leaf) || ((sprite_index == spr_SMB_megamushroom) || ((sprite_index == spr_egg) || ((sprite_index == spr_egg_red) || ((sprite_index == spr_spring_land) || ((sprite_index == spr_SMB3_spring_land) || ((sprite_index == spr_SMB_spring_land) || ((sprite_index == spr_block_pow) || ((sprite_index == spr_SMB3_pow) || ((sprite_index == spr_SMB_pow) || ((sprite_index == spr_pswitch) || ((sprite_index == spr_SMB3_pswitch) || ((sprite_index == spr_SMB_pswitch) || ((sprite_index == spr_spring) || ((sprite_index == spr_SMB3_spring) || ((sprite_index == spr_SMB_spring) || ((sprite_index == spr_SMB_mushroom) || ((sprite_index == spr_SMB3_mushroom) || ((sprite_index == spr_mushroom) || ((sprite_index == spr_SMB_hen_mushroom) || ((sprite_index == spr_SMB_1up) || ((sprite_index == spr_SMB3_1up) || ((sprite_index == spr_1up) || ((sprite_index == spr_SMB_rotten) || ((sprite_index == spr_SMB3_rotten) || ((sprite_index == spr_rotten) || ((sprite_index == spr_SMB_fireflower) || ((sprite_index == spr_SMB_superflower) || ((sprite_index == spr_SMB3_fireflower) || (sprite_index == spr_fireflower)))))))))))))))))))))))))))))))
{
    audio_play_sound(scr_snd_kick(), 0, false)
    instance_create(x, (y - 16), obj_smoke)
    instance_destroy()
}
else if ((sprite_index == spr_boo) || ((sprite_index == spr_SMB3_boo) || (sprite_index == spr_SMB_boo)))
{
    audio_play_sound(scr_snd_sprout(), 0, false)
    with (instance_create((xstart + 8), (ystart - 16), obj_boo))
        vspeed = 0
    instance_destroy()
}
else
{
    audio_play_sound(scr_snd_kick(), 0, false)
    with (scr_sprite_make_object(x, (y - 16), sprite_index))
    {
        visible = 0
        event_user(0)
    }
    instance_destroy()
}

