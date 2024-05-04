if (state == 0)
{
    with (instance_create((((bbox_left + bbox_right) / 2) - 8), y, obj_score))
        event_user(0)
    with (instance_create(x, y, obj_enemy_dead))
    {
        sprite_index = spr_wiggler_flower
        image_index = global.apariencia
        image_speed = 0
        direct = other.direct
    }
    speed = 0
    state = 1
    closeness = 8
    if (global.apariencia == 0)
        sprite_index = spr_SMB_floruga_angry_head
    else if (global.apariencia == 1)
        sprite_index = spr_SMB3_floruga_angry_head
    else if (global.apariencia == 2)
        sprite_index = spr_floruga_angry_head
    image_speed = 0
    for (i = 1; i < seg; i++)
    {
        mybody[i].image_speed = 0
        if (global.apariencia == 0)
            mybody[i].sprite_index = spr_SMB_floruga_angry_body
        else if (global.apariencia == 1)
            mybody[i].sprite_index = spr_SMB3_floruga_angry_body
        else if (global.apariencia == 2)
            mybody[i].sprite_index = spr_floruga_angry_body
    }
    amount_previous = 85
    alarm[1] = 1
    alarm[0] = 65
}

