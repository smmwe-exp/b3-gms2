hitpoint = 0
alarm[0] = 600
with (obj_persistent)
{
    alarm[6] = -1
    alarm[6] = 420
}
image_speed = 0.4
if (global.apariencia == 1)
    visible = 0
else if ((global.apariencia == 2) || (global.apariencia == 3))
    alarm[1] = 1
alarm[2] = 4

