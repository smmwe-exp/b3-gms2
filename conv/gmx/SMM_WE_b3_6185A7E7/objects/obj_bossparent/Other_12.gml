var overlap, overlap2;
overlap = collision_rectangle(bbox_left, bbox_top, bbox_right, (bbox_bottom - 4), obj_bossparent, 0, 1)
if (overlap && (overlap.hardness < 99))
{
    if ((((bbox_left + bbox_right) * 0.5) > ((overlap.bbox_left + overlap.bbox_right) * 0.5)) || ((((bbox_left + bbox_right) * 0.5) == ((overlap.bbox_left + overlap.bbox_right) * 0.5)) && (id > overlap.id)))
        hspeed = abs(hspeed)
    else
        hspeed = (-abs(hspeed))
}
overlap2 = collision_rectangle(bbox_left, bbox_top, bbox_right, (bbox_bottom - 4), obj_shell, 0, 1)
if (overlap2 && (overlap2.hardness < 99))
{
    if ((((bbox_left + bbox_right) * 0.5) > ((overlap2.bbox_left + overlap2.bbox_right) * 0.5)) || ((((bbox_left + bbox_right) * 0.5) == ((overlap2.bbox_left + overlap2.bbox_right) * 0.5)) && (id > overlap2.id)))
        hspeed = abs(hspeed)
    else
        hspeed = (-abs(hspeed))
}

