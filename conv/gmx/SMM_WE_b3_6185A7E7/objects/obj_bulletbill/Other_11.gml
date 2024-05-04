imdead = instance_create(x, y, obj_enemy_dead)
imdead.direct = direct
if (global.apariencia == 0)
    imdead.sprite_index = spr_SMB_bulletbill
else if (global.apariencia == 1)
    imdead.sprite_index = spr_SMB3_bulletbill
else if (global.apariencia == 2)
    imdead.sprite_index = sprite_index
else if (global.apariencia == 4)
    imdead.sprite_index = sprite_index
imdead.image_speed = 0
if ((global.bg_level == "castle") || ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1))))
    imdead.image_index = 1
else
    imdead.image_index = 0
imdead.hspeed = 0.6
imdead.vspeed = 0.1
instance_destroy()

