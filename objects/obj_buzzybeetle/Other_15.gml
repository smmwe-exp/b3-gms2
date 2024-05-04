imheld = instance_create((x - 8), (y - 2), obj_shell)
if (global.apariencia == 0)
{
    if ((global.bg_level == "castle") || ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1))))
        imheld.sprite_index = spr_SMB_shell_buzzy_down_night
    else
        imheld.sprite_index = spr_SMB_shell_buzzy_down
}
else if (global.apariencia == 1)
{
    if ((global.bg_level == "castle") || ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1))))
        imheld.sprite_index = spr_SMB3_shell_buzzy_down_night
    else
        imheld.sprite_index = spr_SMB3_shell_buzzy_down
}
else if (global.apariencia == 2)
    imheld.sprite_index = spr_shell_buzzy_down
else if (global.apariencia == 3)
    imheld.sprite_index = spr_NSMBU_shell_buzzy_down
imheld.koopainside = -1
imheld.alarm[3] = 540
imheld.alarm[4] = 600
if ((global.bg_level == "underwater") || (((global.modo_noche == 1) && (global.bg_level == "airship")) || ((global.modo_noche == 1) && (global.bg_level == "sky"))))
    imheld.vspeed = -1.8
else
    imheld.vspeed = -3
if ((other.bbox_left + (other.bbox_right / 2)) <= (bbox_left + (bbox_right / 2)))
    imheld.hspeed = 0.5
else if ((other.bbox_left + (other.bbox_right / 2)) > (bbox_left + (bbox_right / 2)))
    imheld.hspeed = -0.5
instance_destroy()

