time_blow = alarm[1]
with (instance_create((x - 8), y, obj_bobomb_hold))
{
    direct = other.direct
    alarm[1] = other.time_blow
}
instance_destroy()

