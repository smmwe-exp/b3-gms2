bounce = 0
image_speed = 0
if (position_meeting(x, (y - 8), obj_solid) || (position_meeting(x, (y - 8), obj_pinchos) || (position_meeting(x, (y - 8), obj_cannon) || position_meeting(x, (y - 8), obj_muncher))))
{
    if ((place_meeting((x - 16), y, obj_solid) || (place_meeting((x - 16), y, obj_pinchos) || (place_meeting((x - 16), y, obj_cannon) || place_meeting((x - 16), y, obj_muncher)))) && (place_meeting((x + 16), y, obj_solid) || (place_meeting((x + 16), y, obj_pinchos) || (place_meeting((x + 16), y, obj_cannon) || place_meeting((x + 16), y, obj_muncher)))))
        event_user(0)
    else if (place_meeting((x - 16), y, obj_solid) || (place_meeting((x - 16), y, obj_pinchos) || (place_meeting((x - 16), y, obj_cannon) || place_meeting((x - 16), y, obj_muncher))))
    {
        hspeed = 0.5
        alarm[0] = 32
        alarm[1] = 1
    }
    else if (place_meeting((x + 16), y, obj_solid) || (place_meeting((x + 16), y, obj_pinchos) || (place_meeting((x + 16), y, obj_cannon) || place_meeting((x + 16), y, obj_muncher))))
    {
        hspeed = -0.5
        alarm[0] = 32
        alarm[1] = 1
    }
    else
    {
        hspeed = 0.5
        alarm[0] = 32
        alarm[1] = 1
    }
}
else
{
    vspeed = -0.5
    alarm[0] = 32
    alarm[1] = 1
}

