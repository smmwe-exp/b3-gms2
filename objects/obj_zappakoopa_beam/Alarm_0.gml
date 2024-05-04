if instance_exists(parent)
{
    if (parent.xscale == 1)
    {
        with (instance_create((x + lengthdir_x(random(24), random(360))), (y + lengthdir_y(random(24), random(360))), obj_zappakoopa_beameff))
            target = other.id
    }
    else if (parent.xscale == -1)
    {
        with (instance_create((x + lengthdir_x(random(24), random(360))), (y + lengthdir_y(random(24), random(360))), obj_zappakoopa_beameff))
            target = other.id
    }
}
alarm[0] = 2

