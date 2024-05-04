var new_dir, diff;
if homing
{
    if instance_exists(obj_mario)
    {
        new_dir = point_direction(x, y, obj_mario.x, (obj_mario.y + 16))
        diff = angle_difference(direction, new_dir)
        direction -= min((1 * sign(diff)), abs(diff))
        lastdir = direction
    }
    else
        direction = lastdir
}
if (outside_view() && ((y < room_height) && (depth != 10)))
    instance_destroy()

