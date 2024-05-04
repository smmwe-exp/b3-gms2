imdead = instance_create(x, y, obj_enemy_dead)
imdead.direct = 1
if (global.apariencia == 0)
    imdead.sprite_index = spr_SMB_blooper_deads
else if (global.apariencia == 1)
    imdead.sprite_index = spr_SMB3_blooper_deads
else if (global.apariencia == 2)
    imdead.sprite_index = spr_blooper_deads
imdead.image_speed = 0.05
hspeed = 0
instance_destroy()

