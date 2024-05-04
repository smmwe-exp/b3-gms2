var type_mario;
if instance_exists(obj_doormario)
{
    if (global.apariencia == 3)
        type_mario = obj_marioU
    else
        type_mario = obj_mario
    if instance_exists(obj_levelmanager)
    {
        with (obj_levelmanager)
            alarm[2] = other.time_blow
    }
    with (instance_create((returndoor.x + 8), returndoor.y, obj_curtainin))
        fallow = 1
    if instance_exists(obj_autoscroll)
    {
        with (obj_autoscroll)
        {
            x = other.returndoor.x
            hspeed = velocidad
        }
    }
    if instance_exists(obj_levelmanager)
    {
        with (obj_levelmanager)
            f_mario = 0
    }
    image_index = 0
    image_speed = 0
    with (instance_create((returndoor.x + 8), (returndoor.y - 16), type_mario))
    {
        direct = 1
        snow = obj_doormario.snow
        helmet = obj_doormario.helmet
    }
    obj_mario.holding = obj_doormario.holding
    with (obj_levelmanager)
    {
        barrier = 1
        alarm[6] = 2
    }
    with (obj_doormario)
        instance_destroy()
    with (obj_persistent)
        event_user(0)
    alarm[1] = 5
}

