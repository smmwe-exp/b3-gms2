var wing_c;
event_user(8)
if (wings == 0)
{
    velocity = 0.015
    if (speed > 0.4)
        speed = 0.4
}
else
{
    if (w_wings == obj_lighting)
    {
        wing_c = instance_create((x + 11), (y - 29), obj_wings)
        w_wings = wing_c.id
    }
    if instance_exists(w_wings)
    {
        if (direct == -1)
            w_wings.x = (x + 11)
        else
            w_wings.x = (x - 11)
        w_wings.y = (y - 29)
        w_wings.direct = direct
        w_wings.depth = (depth - 1)
    }
    velocity = 0.1
    if (speed > 0.8)
        speed = 0.8
}
if (boo_huida == 1)
{
    vspeed = -2
    hspeed = choose(2, -2, -2, 2, 2, -2, 2, -2)
    boo_huida = 0
}

