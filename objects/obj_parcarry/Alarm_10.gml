if (enemy == 1)
{
    if (obj == 49)
    {
        sprite_index = spr_SMB2_spike_ball
        image_index = 2
    }
    else if (obj == 74)
        sprite_index = spr_SMB2_banzaibill
    else if (obj == 25)
        sprite_index = spr_SMB2_redshyguy_deads
    else if (obj == 26)
        sprite_index = spr_SMB2_pinkshyguy_deads
    else if (obj == 67)
        sprite_index = spr_SMB2_bobomb_deads
    else if (obj == 72)
        sprite_index = spr_SMB2_bulletbill_deads
    else if (obj == 73)
        sprite_index = spr_SMB2_bulletbill_red
    else if (obj == 28)
        sprite_index = spr_SMB_goomba_deads
    else
        sprite_index = sprite
    if ((obj != 49) && (obj != 73))
    {
        if ((global.bg_level == "castle") || ((global.bg_level == "underground") || ((global.bg_level == "ghost") || (global.modo_noche == 1))))
            image_index = 1
        else
            image_index = 0
    }
    altura = (sprite_width / 2)
}
else if (hold == 1)
{
    if (obj == 154)
        sprite_index = spr_SMB2_pow_held
    else
        sprite_index = sprite
    if ((global.bg_level == "castle") || ((global.bg_level == "underground") || ((global.bg_level == "ghost") || (global.modo_noche == 1))))
        image_index = 1
    else
        image_index = 0
    altura = (sprite_width / 2)
}
else if (cloud == 1)
{
    if (global.bg_level == "underwater")
    {
        if (global.modo_noche == 1)
            sprite_index = spr_SMB2_cloud_underwater_night
        else
            sprite_index = spr_SMB2_cloud_underwater
    }
    else if ((global.bg_level == "castle") || ((global.bg_level == "underground") || ((global.bg_level == "ghost") || (global.modo_noche == 1))))
        sprite_index = spr_SMB2_cloud_night
    else
        sprite_index = spr_SMB2_cloud_overworld
    image_speed = 0.4
    image_index = 0
    visible = 1
}

