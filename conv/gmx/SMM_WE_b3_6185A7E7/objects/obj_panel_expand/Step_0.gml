if (global.idioma == 0)
    header_sprite = 2451
else if (global.idioma == 1)
    header_sprite = 2452
if instance_exists(obj_panel_circle)
{
    if (obj_panel_circle.posicion == 0)
    {
        draw_circles_1 = 0
        draw_circles_2 = 1
        circle_2 = 0
    }
    else if (obj_panel_circle.posicion == 1)
    {
        draw_circles_1 = 1
        draw_circles_2 = 1
        circle_1 = 0
        circle_2 = 1
    }
    else if (obj_panel_circle.posicion == 2)
    {
        draw_circles_1 = 1
        draw_circles_2 = 1
        circle_1 = 1
        circle_2 = 2
    }
    else if ((obj_panel_circle.posicion == 3) || (obj_panel_circle.posicion == 4))
    {
        draw_circles_1 = 1
        draw_circles_2 = 1
        circle_1 = 2
        circle_2 = 2
    }
    else if (obj_panel_circle.posicion == 5)
    {
        draw_circles_1 = 1
        draw_circles_2 = 1
        circle_1 = 2
        circle_2 = 3
    }
}

