if ((scale_x > 0.2) && (scale_y > 0.2))
{
    scale_x -= 0.012
    scale_y -= 0.012
}
else
    instance_destroy()
if ((alpha < 1) && (scale_x > 0.3))
    alpha += 0.01
else
    alpha -= 0.01

