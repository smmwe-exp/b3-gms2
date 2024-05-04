if (ready == 0)
{
    x = (__view_get( e__VW.XView, 0 ) + 64)
    y = (__view_get( e__VW.YView, 0 ) + 48)
}
if (obj_levelmanager.editor == 0)
{
    if (ready == 0)
    {
        if (buscar == 0)
        {
            alarm[1] = 10
            buscar = 1
        }
    }
    else if instance_exists(movement)
    {
        x = (__view_get( e__VW.XView, 0 ) + movement.x)
        y = (__view_get( e__VW.YView, 0 ) + movement.y)
    }
}
if (happy == 1)
{
    sprite_index = spr_happymoon
    hardness = 100
    stomp = -1
    edible = 2
}

