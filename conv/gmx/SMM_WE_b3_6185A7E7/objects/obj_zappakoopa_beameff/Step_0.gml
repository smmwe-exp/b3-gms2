if instance_exists(target)
{
    move_towards_point(target.x, target.y, 1)
    if ((x == target.x) && (y == target.y))
        instance_destroy()
}
else
{
    instance_destroy()
    exit
}
scale -= 0.05
alpha -= 0.025
if (alpha < 0.025)
    instance_destroy()

