if (global.apariencia == 0)
{
    s_chomp = spr_SMB_chainchomp_deads
    s_chain = spr_SMB_chain
    if ((global.bg_level == "castle") || ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1))))
        s_chain_image = 1
    else
        s_chain_image = 0
}
else if (global.apariencia == 1)
{
    s_chomp = 1092
    s_chain = 1042
    if ((global.bg_level == "castle") || ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1))))
        s_chain_image = 1
    else
        s_chain_image = 0
}
else if (global.apariencia == 2)
{
    s_chomp = 1917
    s_chain = 1942
    s_chain_image = 0
}
else if (global.apariencia == 3)
{
    s_chomp = 3126
    s_chain = 3124
    s_chain_image = 0
}
else
{
    s_chomp = 387
    s_chain = 359
    if ((global.bg_level == "castle") || ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1))))
        s_chain_image = 1
    else
        s_chain_image = 0
}
imdead = instance_create((x + 8), y, obj_enemy_dead)
imdead.girar = 1
imdead.sprite_index = s_chomp
imdead.image_speed = 0
imdead.image_index = s_chain_image
imdead.direct = direct
imdead.gravity = 0.16
imdead1 = instance_create(oldx[(1 * closeness)], oldy[(1 * closeness)], obj_enemy_dead)
imdead1.girar = 1
imdead1.sprite_index = s_chain
imdead1.image_speed = 0
imdead1.image_index = s_chain_image
imdead1.direct = direct
imdead1.gravity = 0.16
imdead2 = instance_create(oldx[(2 * closeness)], oldy[(2 * closeness)], obj_enemy_dead)
imdead2.girar = 1
imdead2.sprite_index = s_chain
imdead2.image_speed = 0
imdead2.image_index = s_chain_image
imdead2.direct = direct
imdead2.gravity = 0.16
imdead3 = instance_create(oldx[(3 * closeness)], oldy[(3 * closeness)], obj_enemy_dead)
imdead3.girar = 1
imdead3.sprite_index = s_chain
imdead3.image_speed = 0
imdead3.image_index = s_chain_image
imdead3.direct = direct
imdead3.gravity = 0.16
imdead4 = instance_create(oldx[(4 * closeness)], oldy[(4 * closeness)], obj_enemy_dead)
imdead4.girar = 1
imdead4.sprite_index = s_chain
imdead4.image_speed = 0
imdead4.image_index = s_chain_image
imdead4.direct = direct
imdead4.gravity = 0.16
if ((other.bbox_left + (bbox_right / 2)) < (bbox_left + (bbox_right / 2)))
{
    imdead.hspeed = -1
    imdead1.hspeed = -1
    imdead2.hspeed = -0.5
    imdead3.hspeed = 1
    imdead4.hspeed = 0.5
}
else if ((other.bbox_left + (bbox_right / 2)) > (bbox_left + (bbox_right / 2)))
{
    imdead.hspeed = 1
    imdead1.hspeed = 1
    imdead2.hspeed = 0.5
    imdead3.hspeed = -1
    imdead4.hspeed = -0.5
}
instance_destroy()

