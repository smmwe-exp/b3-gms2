imheld = instance_create((x - 8), (y - 2), obj_shell)
if (global.apariencia == 0)
    imheld.sprite_index = spr_SMB_spiny_dead
else if (global.apariencia == 1)
    imheld.sprite_index = spr_SMB3_spiny_dead
else if (global.apariencia == 2)
    imheld.sprite_index = spr_spiny_dead
imheld.koopainside = -1
imheld.alarm[3] = 540
imheld.alarm[4] = 640
if ((global.bg_level == "underwater") || (((global.modo_noche == 1) && (global.bg_level == "airship")) || ((global.modo_noche == 1) && (global.bg_level == "sky"))))
    imheld.vspeed = -1.8
else
    imheld.vspeed = -3
if ((other.bbox_left + (other.bbox_right / 2)) <= (bbox_left + (bbox_right / 2)))
    imheld.hspeed = 0.5
else if ((other.bbox_left + (other.bbox_right / 2)) > (bbox_left + (bbox_right / 2)))
    imheld.hspeed = -0.5
instance_destroy()

