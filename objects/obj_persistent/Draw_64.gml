draw_enable_alphablend(0)
draw_surface_stretched(application_surface, (port_x * (filter + 1)), (port_y * (filter + 1)), (global.gw * (filter + 1)), (global.gh * (filter + 1)))
draw_enable_alphablend(1)
if (done < 1)
{
    done += 0.0333333333333333
    if (mode == 0)
        draw_set_alpha((1 - done))
    else
        draw_set_alpha(done)
    draw_set_color(c_black)
    draw_rectangle(0, 0, 5000, 5000, 0)
    draw_set_alpha(1)
    draw_set_color(c_white)
}

