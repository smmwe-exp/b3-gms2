if instance_exists(obj_mario)
{
    x = (obj_mario.x - 8)
    y = obj_mario.y
    if (obj_mario.hspeed == 0)
    {
        image_speed = 0
        image_index = 0
    }
    else
        image_speed = 0.25
    if (!instance_exists(obj_mario_transform2))
    {
        if (obj_mario.sprite_index == scr_marioclimb())
            depth = (obj_mario.depth - 1)
        else if instance_exists(obj_yoshi2)
            depth = (obj_yoshi2.depth + 1)
        else
            depth = (obj_mario.depth + 1)
    }
    else
        depth = -5
}
else if instance_exists(obj_doormario)
{
    x = (obj_doormario.x - 8)
    y = obj_doormario.y
    image_speed = 0
    image_index = 0
    depth = (obj_doormario.depth + 1)
}
else if instance_exists(obj_player_goal_smw)
{
    x = (obj_player_goal_smw.x - 8)
    y = obj_player_goal_smw.y
    if (obj_player_goal_smw.hspeed == 0)
    {
        image_speed = 0
        image_index = 0
    }
    else
        image_speed = 0.25
    depth = (obj_player_goal_smw.depth + 1)
}
else if instance_exists(obj_player_goal_smb3)
{
    x = (obj_player_goal_smb3.x - 8)
    y = obj_player_goal_smb3.y
    if (obj_player_goal_smb3.hspeed == 0)
    {
        image_speed = 0
        image_index = 0
    }
    else
        image_speed = 0.25
    depth = (obj_player_goal_smb3.depth + 1)
}
else if instance_exists(obj_player_goal_smb1)
{
    x = (obj_player_goal_smb1.x - 8)
    y = obj_player_goal_smb1.y
    if (obj_player_goal_smb1.hspeed == 0)
    {
        image_speed = 0
        image_index = 0
    }
    else
        image_speed = 0.25
    depth = (obj_player_goal_smb1.depth + 1)
}
else if instance_exists(obj_player_goal_smw_castle)
{
    x = (obj_player_goal_smw_castle.x - 8)
    y = obj_player_goal_smw_castle.y
    if (obj_player_goal_smw_castle.hspeed == 0)
    {
        image_speed = 0
        image_index = 0
    }
    else
        image_speed = 0.25
    depth = (obj_player_goal_smw_castle.depth + 1)
}
else if instance_exists(obj_deadmario)
{
    x = (obj_deadmario.x - 8)
    y = (obj_deadmario.y + 8)
    image_speed = 0
    image_index = 0
    depth = (obj_deadmario.depth + 1)
}
if ((global.keys > 0) && (!instance_exists(obj_mario_transform2)))
{
    oldx[0] = x
    oldy[0] = (y + 16)
    for (i = amount_previous; i > 0; i -= 1)
    {
        oldx[i] = oldx[(i - 1)]
        oldy[i] = oldy[(i - 1)]
    }
}

