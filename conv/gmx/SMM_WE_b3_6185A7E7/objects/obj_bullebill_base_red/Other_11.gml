var sprite, x_pos, y_pos, helshell;
if (sprout == 0)
{
    mybullet = instance_create(x, (y + 8), obj_bulletbull_red)
    with (mybullet)
    {
        if ((global.bg_level == "underwater") || (((global.modo_noche == 1) && (global.bg_level == "sky")) || (((global.modo_noche == 1) && (global.bg_level == "airship")) || (instance_exists(obj_lava_water) && ((y > (obj_lava_water.y + 16)) && ((global.bg_level == "forest") && (global.modo_noche == 0)))))))
            hspeed = -0.5
        else
            hspeed = -1
        image_index = 1
        direct = -1
    }
    alarm[0] = 192
}
else
{
    sprite = scr_constant_get_sprite(sprout)
    if ((sprout == -61) || ((sprout == 1) || ((sprout == 2) || ((sprout == -23) || ((sprout == -65) || ((sprout == -25) || ((sprout == -18) || (sprout == -78))))))))
    {
        x_pos = (x - 16)
        y_pos = y
    }
    else
    {
        x_pos = x
        y_pos = y
    }
    if ((global.bg_level == "underwater") || (((global.modo_noche == 1) && (global.bg_level == "sky")) || (((global.modo_noche == 1) && (global.bg_level == "airship")) || (instance_exists(obj_lava_water) && ((y > (obj_lava_water.y + 16)) && ((global.bg_level == "forest") && (global.modo_noche == 0)))))))
    {
        if (sprout == -1)
        {
            for (i = 0; i < 8; i++)
            {
                with (instance_create((x - choose(16, 24, 18, 19, 16)), y, obj_coin_pow))
                {
                    hspeed = choose(-3, -3, -3.2, -2.5, -2.5, -4, 3)
                    vspeed = choose(-1.5, -1, 0)
                }
            }
        }
        else if ((sprout == -69) || (sprout == -70))
        {
            helshell = instance_create((x - 16), y, obj_shell_held)
            helshell.mytopid = 1
            helshell.sprite_index = sprite
            helshell.hspeed = -3.9
        }
        else
        {
            with (scr_sprite_make_object(x_pos, y_pos, sprite))
            {
                if ((object_index == obj_cheepcheep) || ((object_index == obj_cheepcheep2) || ((object_index == obj_mushroom) || ((object_index == obj_1up) || ((object_index == obj_star) || ((object_index == obj_hen_mushroom) || (object_index == obj_megamushroom)))))))
                    alarm[10] = -1
                if ((object_index == obj_cheepcheep) || (object_index == obj_cheepcheep2))
                    direct = -1
                if (object_index == obj_1up)
                    alarm[11] = 4
                hspeed = -3.5
            }
        }
    }
    else if (sprout == -1)
    {
        for (i = 0; i < 8; i++)
        {
            with (instance_create((x - choose(16, 24, 18, 19, 16)), y, obj_coin_pow))
            {
                hspeed = choose(-3, -3, -3.2, -2.5, -2.5, -4, 3)
                vspeed = choose(-1.5, -1, 0)
            }
        }
    }
    else if ((sprout == -69) || (sprout == -70))
    {
        helshell = instance_create((x - 16), y, obj_shell_held)
        helshell.mytopid = 1
        helshell.sprite_index = sprite
        helshell.hspeed = -3.9
    }
    else
    {
        shoot_left = scr_sprite_make_object(x_pos, y_pos, sprite)
        with (shoot_left)
        {
            if ((object_index == obj_cheepcheep) || ((object_index == obj_cheepcheep2) || ((object_index == obj_mushroom) || ((object_index == obj_1up) || ((object_index == obj_star) || ((object_index == obj_hen_mushroom) || (object_index == obj_megamushroom)))))))
                alarm[10] = -1
            if ((object_index == obj_cheepcheep) || (object_index == obj_cheepcheep2))
                direct = -1
            else if (object_index == obj_1up)
                alarm[11] = 4
            else if (object_index == obj_monty_chase)
                alarm[10] = 30
            hspeed = -4.5
        }
    }
    alarm[0] = 192
}
