if (instance_exists(obj_levelmanager) && (obj_levelmanager.editor == 0))
    instance_destroy()
x = (__view_get( e__VW.XView, 0 ) + 134)
y = ((__view_get( e__VW.YView, 0 ) + 216) - anim)
if (ready == 0)
{
    if (anim < 36)
    {
        anim += 4
        alpha += 0.1
    }
    else
    {
        anim = 36
        alpha = 1
        if (large == 1)
            alarm[0] = 120
        else
            alarm[0] = 80
        ready = 1
    }
}
else if (ready == 2)
{
    if (anim > 18)
    {
        anim -= 2
        alpha -= 0.1
    }
    else
        instance_destroy()
}

