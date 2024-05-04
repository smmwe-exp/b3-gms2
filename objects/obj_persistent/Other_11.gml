if (filter == 0)
    s = 1
else if (filter == 1)
    s = 2
else if (filter == 2)
    s = 3
else if (filter == 3)
    s = 4
else if (filter == 4)
    s = 5
display_reset(0, vsync)
window_set_size((global.gw * s), (global.gh * s))
display_set_gui_size((global.gw * s), (global.gh * s))
alarm[2] = 1

