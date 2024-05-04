other.stompstyle = 0
if (other.vspeed > 0)
{
    other.vspeed -= 0.4
    salto = 0
}
else if (salto == 0)
{
    if (other.y <= (y - 92))
    {
        other.vspeed--
        if (other.vspeed < -3.2)
            other.vspeed = -3.2
    }
    else
    {
        other.vspeed -= 0.5
        if (other.vspeed < -2.2)
            other.vspeed = -2.2
    }
}
if ((keyboard_check_pressed(global.saltar) || keyboard_check_pressed(global.saltar_spin)) && ((other.y <= (y - 84)) && (other.vspeed < 0)))
{
    salto = 1
    with (other.id)
    {
        if ((global.bg_level == "underwater") || (((global.modo_noche == 1) && (global.bg_level == "sky")) || (instance_exists(obj_lava_water) && (((y + 16) > obj_lava_water.y) && ((global.bg_level == "forest") && (global.modo_noche == 0))))))
            vspeed = -2
        else
            vspeed = -4.25
        jumpnow = 1
        state = 2
    }
}

