if (global.bg_level == "snow")
{
    sprite_index = spr_SMB2_spike_ball
    image_index = 2
}
else if ((global.bg_level == "castle") || ((global.bg_level == "underground") || ((global.bg_level == "ghost") || (global.modo_noche == 1))))
{
    sprite_index = spr_SMB2_veggies_night
    image_index = choose(0, 1, 2, 3, 4, 5, 6)
}
else
    image_index = choose(0, 1, 2, 3, 4, 5, 6)
image_speed = 0
ready = 0
vspeed = -0.5

