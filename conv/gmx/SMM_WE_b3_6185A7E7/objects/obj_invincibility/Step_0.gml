if instance_exists(obj_mario)
{
    x = obj_mario.x
    y = obj_mario.y
    depth = -6
    obj_mario.invincible = -1
}
else if instance_exists(obj_player_goal_smw)
{
    x = obj_player_goal_smw.x
    y = obj_player_goal_smw.y
    depth = -6
}
else if instance_exists(obj_warpmario)
{
    x = obj_warpmario.x
    y = obj_warpmario.y
    depth = 10
}
else
{
    visible = 0
    exit
}
if ((global.apariencia == 2) || (global.apariencia == 3))
    visible = 1

