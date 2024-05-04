image_index = 0
with (instance_create(x, (y + 1), obj_wrench))
{
    vspeed += -1
    if ((!instance_exists(obj_mario)) || (obj_mario.x < x))
        hspeed = -1
    else
        hspeed = 1
}
alarm[2] = 60

