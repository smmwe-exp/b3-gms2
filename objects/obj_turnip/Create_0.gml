event_inherited()
if ((global.bg_level == "castle") || ((global.bg_level == "underground") || ((global.bg_level == "ghost") || (global.modo_noche == 1))))
    sprite_index = spr_SMB2_turnip_night
else
    sprite_index = spr_SMB2_turnip
image_speed = 0.15

