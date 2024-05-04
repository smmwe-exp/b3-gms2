if instance_exists(obj_flagpole)
{
    if (y > (obj_flagpole.y + 144))
    {
        vspeed = 0
        y = (obj_flagpole.y + 144)
        ready = 1
    }
}
if ((global.condiciones == 0) || ((global.condiciones == 1) && (global.condiciones_clear == 1)))
    visible = 1
else
    visible = 0

