imdead = instance_create(x, y, obj_enemy_dead)
imdead.sprite_index = sprite_index
imdead.direct = direct
imdead.hspeed = 0
imdead.vspeed = -4
multidead = instance_create(x, y, obj_enemy_multidead)
with (multidead)
{
    count = 4
    direct = other.direct
    if (other.sprite_index == spr_floruga_head)
        sprite_index = spr_floruga_body
    else if (other.sprite_index == spr_SMB3_floruga_head)
        sprite_index = spr_SMB3_floruga_body
    else if (other.sprite_index == spr_SMB_floruga_head)
        sprite_index = spr_SMB_floruga_body
    else if (global.apariencia == 0)
        sprite_index = spr_SMB_floruga_angry_body
    else if (global.apariencia == 1)
        sprite_index = spr_SMB3_floruga_angry_body
    else if (global.apariencia == 2)
        sprite_index = spr_floruga_angry_body
}
instance_destroy()

