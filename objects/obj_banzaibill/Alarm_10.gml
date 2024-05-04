var vel;
if ((global.bg_level == "underwater") || (((global.modo_noche == 1) && (global.bg_level == "airship")) || ((global.modo_noche == 1) && (global.bg_level == "sky"))))
    vel = 0.6
else
    vel = 1
if (direct_t == 1)
    hspeed = (-vel)
else if (direct_t == 2)
    vspeed = vel
else if (direct_t == 3)
    hspeed = vel
else if (direct_t == 4)
    vspeed = (-vel)

