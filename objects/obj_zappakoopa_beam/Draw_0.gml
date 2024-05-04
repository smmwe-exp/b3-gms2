draw_set_blend_mode(1)
draw_set_alpha(alpha)
draw_set_circle_precision(64)
if instance_exists(parent)
{
    if (parent.xscale == 1)
        draw_circle_colour((parent.x + 6), (parent.y + 6), radius, make_colour_rgb(0, 147, 255), make_colour_rgb(0, 147, 255), 0)
    else if (parent.xscale == -1)
        draw_circle_colour((parent.x - 7), (parent.y + 6), radius, make_colour_rgb(0, 147, 255), make_colour_rgb(0, 147, 255), 0)
}
draw_set_alpha(1)
draw_set_blend_mode(0)

