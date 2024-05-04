imheld = instance_create((x - 8), (y - 2), obj_shell)
if (global.apariencia == 0)
    imheld.sprite_index = spr_SMB_shell_red_down
else if (global.apariencia == 1)
    imheld.sprite_index = spr_SMB3_shell_red_down
else if (global.apariencia == 2)
{
    imheld.sprite_index = spr_shell_red_down_inside
    imheld.koopainside = 2
    imheld.alarm[3] = 540
    imheld.alarm[4] = 600
    imheld.alarm[5] = 120
}
if ((global.bg_level == "underwater") || (((global.modo_noche == 1) && (global.bg_level == "airship")) || ((global.modo_noche == 1) && (global.bg_level == "sky"))))
    imheld.vspeed = -1.8
else
    imheld.vspeed = -3
if ((other.bbox_left + (other.bbox_right / 2)) <= (bbox_left + (bbox_right / 2)))
    imheld.hspeed = 0.5
else if ((other.bbox_left + (other.bbox_right / 2)) > (bbox_left + (bbox_right / 2)))
    imheld.hspeed = -0.5
instance_destroy()

