if ((bbox_left + (other.bbox_right / 2)) < (other.bbox_left + (other.bbox_right / 2)))
{
    other.hspeed = 1.2
    other.direct = 1
}
else if ((bbox_left + (other.bbox_right / 2)) > (other.bbox_left + (other.bbox_right / 2)))
{
    other.hspeed = -1.2
    other.direct = -1
}
else
{
    hspeed = 1.2
    other.direct = 1
}
other.vspeed = -2
event_user(0)

