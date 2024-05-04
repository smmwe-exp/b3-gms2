imdead = instance_create((x + 8), (y + 8), obj_enemy_dead)
imdead.girar = 1
if ((sprite_index == spr_shell) || ((sprite_index == spr_shell_down) || (sprite_index == spr_shell_down_inside)))
    imdead.sprite_index = spr_shell_deads
else if ((sprite_index == spr_shell_red) || ((sprite_index == spr_shell_red_down) || (sprite_index == spr_shell_red_down_inside)))
    imdead.sprite_index = spr_shell_red_deads
else if ((sprite_index == spr_shell_buzzy) || ((sprite_index == spr_shell_buzzy_down) || ((sprite_index == spr_buzzy_shake) || (sprite_index == spr_buzzy_shake_down))))
    imdead.sprite_index = spr_shell_buzzy_deads
else if ((sprite_index == spr_spiny_dead) || (sprite_index == spr_spiny_shake))
    imdead.sprite_index = spr_shell_spiny_deads
else if (sprite_index == spr_shell_buzzy_empty)
    imdead.sprite_index = spr_buzzy_empty_deads
else if (sprite_index == spr_shell_spiny_empty)
    imdead.sprite_index = spr_spiny_empty_deads
else if ((sprite_index == spr_SMB_shell) || (sprite_index == spr_SMB_shell_down))
    imdead.sprite_index = spr_SMB_shell_deads
else if ((sprite_index == spr_SMB_shell_red) || (sprite_index == spr_SMB_shell_red_down))
    imdead.sprite_index = spr_SMB_shell_red_deads
else if ((sprite_index == spr_SMB_shell_buzzy) || (sprite_index == spr_SMB_shell_buzzy_down))
{
    imdead.sprite_index = spr_SMB_shell_buzzy_deads
    imdead.image_index = 0
    imdead.image_speed = 0
}
else if ((sprite_index == spr_SMB_shell_buzzy_night) || (sprite_index == spr_SMB_shell_buzzy_down_night))
{
    imdead.sprite_index = spr_SMB_shell_buzzy_deads
    imdead.image_index = 1
    imdead.image_speed = 0
}
else if (sprite_index == spr_SMB_spiny_dead)
    imdead.sprite_index = spr_SMB_shell_spiny_deads
else if (sprite_index == spr_SMB_shell_empty)
    imdead.sprite_index = spr_SMB_shell_buzzy_empty_deads
else if (sprite_index == spr_SMB_shell_empty_night)
    imdead.sprite_index = spr_SMB_shell_buzzy_empty_night_deads
else if (sprite_index == spr_SMB_shell_empty_spiny)
    imdead.sprite_index = spr_SMB_shell_spiny_empty_deads
else if ((sprite_index == spr_SMB3_shell) || (sprite_index == spr_SMB3_shell_down))
    imdead.sprite_index = spr_SMB3_koopa_deads
else if ((sprite_index == spr_SMB3_shell_red) || (sprite_index == spr_SMB3_shell_red_down))
    imdead.sprite_index = spr_SMB3_koopa_red_deads
else if ((sprite_index == spr_SMB3_spiny_dead) || (sprite_index == spr_SMB3_spiny_shake))
    imdead.sprite_index = spr_SMB3_shell_spiny_deads
else if ((sprite_index == spr_SMB3_shell_buzzy) || ((sprite_index == spr_SMB3_shell_buzzy_down) || (sprite_index == spr_SMB3_buzzy_shake)))
{
    imdead.sprite_index = spr_SMB3_shell_buzzy_deads
    imdead.image_index = 0
    imdead.image_speed = 0
}
else if ((sprite_index == spr_SMB3_shell_buzzy_night) || ((sprite_index == spr_SMB3_shell_buzzy_down_night) || (sprite_index == spr_SMB3_buzzy_shake_night)))
{
    imdead.sprite_index = spr_SMB3_shell_buzzy_deads
    imdead.image_index = 1
    imdead.image_speed = 0
}
else if (sprite_index == spr_SMB3_shell_empty)
    imdead.sprite_index = spr_SMB3_shell_buzzy_empty_deads
else if (sprite_index == spr_SMB3_shell_empty_night)
    imdead.sprite_index = spr_SMB3_shell_buzzy_empty_night_deads
else if (sprite_index == spr_SMB3_shell_spiny_empty)
    imdead.sprite_index = spr_SMB3_shell_spiny_empty_deads
else
    imdead.sprite_index = spr_shell_deads
if (dead_h == 0)
{
    if (other.hspeed == 0)
    {
        if ((other.bbox_left + (bbox_right / 2)) < (bbox_left + (bbox_right / 2)))
            imdead.hspeed = 1
        else if ((other.bbox_left + (bbox_right / 2)) > (bbox_left + (bbox_right / 2)))
            imdead.hspeed = -1
    }
    else if (other.hspeed > 0)
        imdead.hspeed = 1
    else if (other.hspeed < 0)
        imdead.hspeed = -1
}
else
{
    imdead.hspeed = 0
    with (instance_create(imdead.x, (imdead.y - 5), obj_smoke))
        sprite_index = spr_spinthump
}
instance_destroy()

