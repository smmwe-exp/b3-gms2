if ((other.vspeed < 0) && ((!place_meeting(x, (y - 16), obj_solid)) && (bbox_bottom < (other.yprevious + 5))))
{
    if ((global.bg_level == "underwater") || (((global.bg_level == "sky") && (global.modo_noche == 1)) || ((global.bg_level == "airship") && (global.modo_noche == 1))))
        vspeed = -1.8
    else
        vspeed = -3.2
}

