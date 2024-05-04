girar = 0
if ((sprite_index != spr_boomboom_dead) && ((sprite_index != spr_SMB3_bowser_deads) && ((sprite_index != spr_bowser_walk) && ((sprite_index != spr_rockywrench_dead) && ((sprite_index != spr_blooper_deads) && ((sprite_index != spr_SMB3_blooper_deads) && ((sprite_index != spr_SMB_blooper_deads) && ((sprite_index != spr_drybones_deads) && (sprite_index != spr_SMB3_drybones_deads)))))))))
{
    image_speed = 0
    image_index = 0
}
if ((sprite_index != spr_cannonball) && ((sprite_index != spr_SMB3_cannonball) && ((sprite_index != spr_SMB_cannonball) && ((sprite_index != spr_banzaibill) && ((sprite_index != spr_bulletbill) && ((sprite_index != spr_SMB3_bulletbill) && ((sprite_index != spr_SMB_bulletbill) && ((sprite_index != spr_bulletbill_red) && ((sprite_index != spr_SMB3_bulletbill_red) && ((sprite_index != spr_SMB_bulletbill_red) && ((sprite_index != spr_blooper_deads) && ((sprite_index != spr_SMB3_blooper_deads) && (sprite_index != spr_SMB_blooper_deads)))))))))))))
{
    if ((sprite_index == spr_podoboo) || ((sprite_index == spr_SMB3_podoboo) || (sprite_index == spr_SMB_podoboo)))
        vspeed = -5
    else
        vspeed = -4
}
else
    vspeed = 0.1
direct = 1
direct_y = 1
big = 0
swimming = 0
modo_lava = 0
if ((sprite_index == spr_blooper_deads) || ((sprite_index == spr_SMB3_blooper_deads) || (sprite_index == spr_SMB_blooper_deads)))
    gravity = 0.1
else
    gravity = 0.2

