imheld = instance_create(x, (y - 2), obj_shell)
if (sprite_index == spr_shell)
    imheld.sprite_index = spr_shell_down
else if (sprite_index == spr_SMB3_shell)
    imheld.sprite_index = spr_SMB3_shell_down
else if (sprite_index == spr_SMB_shell)
    imheld.sprite_index = spr_SMB_shell_down
else if (sprite_index == spr_shell_red)
    imheld.sprite_index = spr_shell_red_down
else if (sprite_index == spr_SMB3_shell_red)
    imheld.sprite_index = spr_SMB3_shell_red_down
else if (sprite_index == spr_SMB_shell_red)
    imheld.sprite_index = spr_SMB_shell_red_down
else if (sprite_index == spr_shell_buzzy)
    imheld.sprite_index = spr_shell_buzzy_down
else if (sprite_index == spr_SMB3_shell_buzzy)
    imheld.sprite_index = spr_SMB3_shell_buzzy_down
else if (sprite_index == spr_SMB3_shell_buzzy_night)
    imheld.sprite_index = spr_SMB3_shell_buzzy_down_night
else if (sprite_index == spr_SMB_shell_buzzy)
    imheld.sprite_index = spr_SMB_shell_buzzy_down
else if (sprite_index == spr_SMB_shell_buzzy_night)
    imheld.sprite_index = spr_SMB_shell_buzzy_down_night
else if ((sprite_index == spr_buzzy_shake) || (sprite_index == spr_buzzy_shake_down))
    imheld.sprite_index = spr_shell_buzzy_down
else if ((sprite_index == spr_SMB3_buzzy_shake) || (sprite_index == spr_SMB3_buzzy_shake_down))
    imheld.sprite_index = spr_SMB3_shell_buzzy_down
else if ((sprite_index == spr_SMB3_buzzy_shake_night) || (sprite_index == spr_SMB3_buzzy_shake_down_night))
    imheld.sprite_index = spr_SMB3_shell_buzzy_down_night
else if (sprite_index == spr_spiny_shake)
    imheld.sprite_index = spr_spiny_dead
else if (sprite_index == spr_SMB3_spiny_shake)
    imheld.sprite_index = spr_SMB3_spiny_dead
else if (sprite_index == spr_NSMBU_shell_buzzy)
    imheld.sprite_index = spr_NSMBU_shell_buzzy_down
else
    imheld.sprite_index = sprite_index
if ((global.bg_level == "underwater") || (((global.modo_noche == 1) && (global.bg_level == "airship")) || (((global.modo_noche == 1) && (global.bg_level == "sky")) || (instance_exists(obj_lava_water) && ((y > obj_lava_water.y) && ((global.bg_level == "forest") && (global.modo_noche == 0)))))))
    imheld.vspeed = -2.125
else
    imheld.vspeed = -4.125
if ((other.bbox_left + (other.bbox_right / 2)) <= (bbox_left + (bbox_right / 2)))
    imheld.hspeed = 0.5
else if ((other.bbox_left + (other.bbox_right / 2)) > (bbox_left + (bbox_right / 2)))
    imheld.hspeed = -0.5
if (koopainside != 0)
{
    imheld.koopainside = koopainside
    imheld.alarm[3] = 540
    imheld.alarm[4] = 600
}
instance_destroy()

