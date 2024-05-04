if (speed > 0)
{
    if (place_meeting((x + lengthdir_x((speed + 1), (direction - 90))), (y + lengthdir_y((speed + 1), (direction - 90))), obj_solid) == 0)
    {
        if (turn == 0)
        {
            turn = 1
            alarm[0] = 6
        }
        direction -= 90
        x += hspeed
        y += vspeed
        scr_move_contact_object((direction - 90), speed, 90)
    }
    else if place_meeting((x + lengthdir_x(speed, direction)), (y + lengthdir_y(speed, direction)), obj_solid)
    {
        if (turn == 0)
        {
            turn = 2
            alarm[0] = 6
        }
        direction += 90
        scr_move_contact_object((direction - 90), speed, 90)
    }
}
if (speed < 0)
{
    if (place_meeting((x + lengthdir_x((speed - 1), (direction + 90))), (y + lengthdir_y((speed - 1), (direction + 90))), obj_solid) == 0)
    {
        if (turn == 0)
        {
            turn = 1
            alarm[0] = 6
        }
        direction += 90
        x += hspeed
        y += vspeed
        scr_move_contact_object((direction + 90), speed, 90)
    }
    else if place_meeting((x + lengthdir_x(speed, direction)), (y + lengthdir_y(speed, direction)), obj_solid)
    {
        if (turn == 0)
        {
            turn = 2
            alarm[0] = 6
        }
        direction -= 90
        scr_move_contact_object((direction + 90), speed, 90)
    }
}
event_user(2)

