if ((!outside_view()) && (gravity == 0))
{
    if (state == 2)
    {
        if (global.apariencia == 0)
            sprite_index = spr_SMB_floruga_angry_head
        else if (global.apariencia == 1)
            sprite_index = spr_SMB3_floruga_angry_head
        else if (global.apariencia == 2)
            sprite_index = spr_floruga_angry_head
        for (i = 1; i < seg; i++)
        {
            if (global.apariencia == 0)
                mybody[i].sprite_index = spr_SMB_floruga_angry_body
            else if (global.apariencia == 1)
                mybody[i].sprite_index = spr_SMB3_floruga_angry_body
            else if (global.apariencia == 2)
                mybody[i].sprite_index = spr_floruga_angry_body
        }
    }
    moving = 1
    for (i = 0; i < 4; i++)
    {
        with (mybody[i])
            direct = -1
    }
    event_inherited()
    event_user(15)
}
else
    alarm[10] = 1

