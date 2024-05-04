var wing_c, col_flip, col_block_n, col_pow, col_spring, col_helmet, col_not_spiny, col_nube, overlap, col_oneway;
if (collision_rectangle(bbox_left, (bbox_top + 2), bbox_right, (bbox_bottom - 1), obj_lava_water, 0, 0) && (global.apariencia != 0))
{
    if (salpi == 0)
    {
        salpicadura = 1
        salpi = 1
        alarm[1] = 1
    }
}
else
{
    salpi = 0
    salpicadura = 0
}
if ((global.bg_level == "underwater") || (((global.modo_noche == 1) && (global.bg_level == "airship")) || (((global.modo_noche == 1) && (global.bg_level == "sky")) || (instance_exists(obj_lava_water) && ((y >= obj_lava_water.y) && ((global.bg_level == "forest") && (global.modo_noche == 0)))))))
    swimming = 1
else
    swimming = 0
if (wings == 1)
{
    if (w_wings == obj_lighting)
    {
        wing_c = instance_create(x, y, obj_wings)
        wing_c.thwomp = 1
        w_wings = wing_c.id
    }
    if instance_exists(w_wings)
    {
        if ((direct_t == 2) && (image_index == 2))
            w_wings.x = (x - 2)
        else
            w_wings.x = x
        w_wings.y = (y - 8)
        w_wings.depth = (depth - 1)
    }
    if (direct_t == 1)
    {
        if (ready == 0)
        {
            if (x > (xstart + 16))
            {
                if (hspeed < -0.5)
                    hspeed = -0.5
                else
                    hspeed -= 0.03
            }
            else if (x < (xstart - 16))
            {
                if (hspeed > 0.5)
                    hspeed = 0.5
                else
                    hspeed += 0.03
            }
        }
        else
            hspeed = 0
    }
}
if (direct_t == 1)
{
    if (global.apariencia == 0)
        sprite_index = spr_SMB_thwomp
    else if (global.apariencia == 1)
        sprite_index = spr_SMB3_thwomp
    else if (global.apariencia == 2)
        sprite_index = spr_thwomp
    if (((ready == 0) && (instance_exists(obj_mario) && (obj_mario.x < (x - 80)))) || (((ready == 0) && (instance_exists(obj_mario) && (obj_mario.y < (y - 16)))) || ((ready == 0) && (instance_exists(obj_mario) && (obj_mario.x > (x + 80))))))
    {
        image_index = 0
        image_xscale = 1
    }
    else if ((ready == 0) && (instance_exists(obj_mario) && ((obj_mario.x < (x - 48)) && ((obj_mario.x > (x - 80)) && ((y == ystart) && (obj_mario.y > (y - 15)))))))
    {
        image_index = 1
        image_xscale = 1
    }
    else if ((ready == 0) && (instance_exists(obj_mario) && ((obj_mario.x > (x + 48)) && ((obj_mario.x < (x + 80)) && ((y == ystart) && (obj_mario.y > (y - 15)))))))
    {
        image_index = 1
        image_xscale = -1
    }
    else if ((ready == 0) && (instance_exists(obj_mario) && ((obj_mario.x > (x - 48)) && ((obj_mario.x < (x + 48)) && (((y - 16) <= obj_mario.y) && (y > (obj_mario.y - 176)))))))
    {
        ready = 1
        image_index = 2
        image_xscale = 1
        if (collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_solidtop, 0, 0) || (collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_block_pow_hold, 0, 0) || (collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_pinchos, 0, 0) || (collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_spring, 0, 0) || collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_nube, 0, 0)))))
            vspeed = -1.5
    }
    else if (ready == 1)
    {
        event_user(4)
        col_flip = collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_flipblock, 0, 0)
        col_block_n = collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_blockparent, 0, 0)
        col_pow = collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_block_pow_hold, 0, 0)
        col_spring = collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_spring, 0, 0)
        col_helmet = collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_helmet, 0, 0)
        col_not_spiny = (!collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_helmet_spiny, 0, 0))
        col_nube = collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_nube, 0, 0)
        if (col_helmet && col_not_spiny)
        {
            if instance_exists(obj_mario)
            {
                if (obj_mario.vspeed >= 0)
                    vspeed = -2
                else
                    vspeed = (obj_mario.vspeed + -1.5)
                audio_stop_sound(snd_helmet)
                audio_play_sound(snd_helmet, 0, false)
                with (instance_create(col_helmet.x, col_helmet.y, obj_smoke))
                    sprite_index = spr_starhelmet
            }
        }
        else if col_spring
        {
            col_spring.image_speed = 0.4
            audio_stop_sound(scr_snd_spring())
            audio_play_sound(scr_snd_spring(), 0, false)
            if (cont_spring != 3)
            {
                cont_spring += 1
                vspeed = -4
            }
            else
            {
                gravity = 0
                if (vspeed > 0)
                    vspeed = 0
                cont_spring = 0
                ready = 2
                alarm[0] = 1
            }
        }
        else if ((collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_solidtop, 0, 0) || collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_pinchos, 0, 0)) && ((!collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_nube, 0, 0)) && ((!collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_block_pow_hold, 0, 0)) && ((!collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_blockparent, 0, 0)) && ((!collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_block_rock, 0, 0)) && (!collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_block_ice, 0, 0)))))))
        {
            ready = 2
            gravity = 0
            vspeed = 0
            audio_play_sound(scr_snd_thwomp(), 0, false)
            if instance_exists(obj_levelmanager)
            {
                with (obj_levelmanager)
                    alarm[11] = 1
            }
            with (instance_create((bbox_left - 8), (bbox_bottom - 8), obj_smoke))
            {
                sprite_index = spr_smokethwomp
                depth = -7
            }
            with (instance_create(bbox_left, (bbox_bottom - 8), obj_smoke))
            {
                sprite_index = spr_smokethwomp
                depth = -7
            }
            with (instance_create((bbox_right - 8), (bbox_bottom - 8), obj_smoke))
            {
                sprite_index = spr_smokethwomp
                depth = -7
            }
            alarm[0] = 60
        }
        else if collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_thwomp, 0, 0)
        {
            ready = 2
            gravity = 0
            vspeed = 0
            audio_play_sound(scr_snd_thwomp(), 0, false)
            if instance_exists(obj_levelmanager)
            {
                with (obj_levelmanager)
                    alarm[11] = 1
            }
            with (instance_create((bbox_left - 8), (bbox_bottom - 8), obj_smoke))
            {
                sprite_index = spr_smokethwomp
                depth = -7
            }
            with (instance_create(bbox_left, (bbox_bottom - 8), obj_smoke))
            {
                sprite_index = spr_smokethwomp
                depth = -7
            }
            with (instance_create((bbox_right - 8), (bbox_bottom - 8), obj_smoke))
            {
                sprite_index = spr_smokethwomp
                depth = -7
            }
            alarm[0] = 60
        }
    }
    else if (ready == 3)
    {
        if (y <= (ystart + 1))
        {
            ready = 0
            gravity = 0
            vspeed = 0
            y = ystart
            image_index = 0
            image_xscale = 1
            alarm[10] = 2
        }
        else if ((vspeed < 0) && (collision_rectangle((bbox_left + 1), ((bbox_top + vspeed) - 1), (bbox_right - 1), (bbox_top - 1), obj_solid, 1, 0) || collision_rectangle((bbox_left + 1), ((bbox_top + vspeed) - 1), (bbox_right - 1), (bbox_top - 1), obj_onewaygate_bottom, 1, 0)))
        {
            ready = 0
            gravity = 0
            vspeed = 0
            ystart = y
            image_index = 0
            image_xscale = 1
        }
    }
}
if (direct_t == 2)
{
    if (global.apariencia == 0)
        sprite_index = spr_SMB_thwomp_h
    else if (global.apariencia == 1)
        sprite_index = spr_SMB3_thwomp_h
    else if (global.apariencia == 2)
        sprite_index = spr_thwomp_h
    if (((ready == 0) && (instance_exists(obj_mario) && ((obj_mario.y >= (y - 64)) && ((obj_mario.y < (y - 48)) && ((x == xstart) && ((obj_mario.x <= x) && (obj_mario.x >= (x - 32)))))))) || ((ready == 0) && (instance_exists(obj_mario) && ((obj_mario.y <= (y + 32)) && ((obj_mario.y > (y + 16)) && ((obj_mario.x <= x) && (obj_mario.x >= (x - 16))))))))
    {
        image_index = 1
        image_xscale = 1
    }
    else if (((ready == 0) && (instance_exists(obj_mario) && ((obj_mario.y < (y - 64)) && (obj_mario.x < (x - 160))))) || (((ready == 0) && (instance_exists(obj_mario) && ((obj_mario.y > (y + 32)) && (obj_mario.x < (x - 160))))) || (((ready == 0) && (instance_exists(obj_mario) && ((obj_mario.y >= (y - 64)) && ((obj_mario.y < (y - 48)) && (obj_mario.x < (x - 32)))))) || (((ready == 0) && (instance_exists(obj_mario) && ((obj_mario.y <= (y + 32)) && ((obj_mario.y > (y + 16)) && (obj_mario.x < (x - 32)))))) || ((ready == 0) && (instance_exists(obj_mario) && (obj_mario.x > x)))))))
    {
        image_index = 0
        image_xscale = 1
    }
    else if ((ready == 0) && (instance_exists(obj_mario) && ((obj_mario.y >= (y - 48)) && ((obj_mario.y <= (y + 16)) && (((x - 12) >= obj_mario.x) && (obj_mario.x > (x - 160)))))))
    {
        ready = 1
        image_index = 2
        image_xscale = 1
        if (collision_rectangle((bbox_left - 1), (bbox_top + 1), bbox_left, (bbox_bottom - 4), obj_flipblock, 0, 0) || collision_rectangle((bbox_left - 1), (bbox_top + 1), bbox_left, (bbox_bottom - 4), obj_block_pow_hold, 0, 0))
            hspeed = 1.5
    }
    else if (ready == 1)
    {
        if (swimming == 1)
        {
            hspeed -= 0.06
            if (paracaidas == 1)
            {
                if ((hspeed < -1) && (speed_max == 0))
                {
                    hspeed = 0
                    speed_max = 1
                }
                else if ((hspeed < -0.5) && (speed_max == 1))
                    hspeed = -0.5
            }
            else if (hspeed < -1)
                hspeed = -1
        }
        else
        {
            hspeed -= 0.08
            if (paracaidas == 1)
            {
                if ((hspeed < -2) && (speed_max == 0))
                {
                    hspeed = 0
                    speed_max = 1
                }
                else if ((hspeed < -0.8) && (speed_max == 1))
                    hspeed = -0.8
            }
            else if (hspeed < -3)
                hspeed = -3
        }
        col_flip = collision_rectangle((bbox_left - 1), (bbox_top + 1), bbox_left, (bbox_bottom - 4), obj_flipblock, 0, 0)
        col_block_n = collision_rectangle((bbox_left - 1), (bbox_top + 1), bbox_left, (bbox_bottom - 4), obj_blockparent, 0, 0)
        col_pow = collision_rectangle((bbox_left - 1), (bbox_top + 1), bbox_left, (bbox_bottom - 4), obj_block_pow_hold, 0, 0)
        col_spring = collision_rectangle((bbox_left - 1), (bbox_top + 1), bbox_left, (bbox_bottom - 4), obj_spring_land, 0, 0)
        col_helmet = collision_rectangle((bbox_left - 1), (bbox_top + 1), bbox_left, (bbox_bottom - 4), obj_helmet, 0, 0)
        overlap = collision_rectangle(bbox_left, bbox_top, bbox_right, (bbox_bottom - 4), obj_thwomp, 0, 1)
        col_oneway = collision_rectangle((bbox_left - 1), (bbox_top + 1), bbox_left, (bbox_bottom - 4), obj_onewaygate_right, 0, 0)
        if col_helmet
        {
            hspeed = 7
            audio_stop_sound(snd_helmet)
            audio_play_sound(snd_helmet, 0, false)
            with (instance_create(col_helmet.x, col_helmet.y, obj_smoke))
                sprite_index = spr_starhelmet
        }
        else if col_oneway
        {
            ready = 2
            audio_play_sound(scr_snd_thwomp(), 0, false)
            if instance_exists(obj_levelmanager)
            {
                with (obj_levelmanager)
                    alarm[11] = 1
            }
            with (instance_create((x - 12), (y - 16), obj_smoke))
            {
                sprite_index = spr_smokethwomp
                depth = -3
            }
            with (instance_create((x + 12), (y + 12), obj_smoke))
            {
                sprite_index = spr_smokethwomp
                depth = -3
            }
            alarm[0] = 60
            if (!audio_is_playing(snd_oneway))
                audio_play_sound(snd_oneway, 0, false)
            with (col_oneway)
                rot = 1
        }
        else if col_spring
        {
            col_spring.image_speed = 0.4
            audio_stop_sound(scr_snd_spring())
            audio_play_sound(scr_snd_spring(), 0, false)
            if (cont_spring != 3)
            {
                cont_spring += 1
                hspeed = 7
            }
            else
            {
                if (hspeed < 0)
                    hspeed = 0
                cont_spring = 0
                ready = 2
                alarm[0] = 1
            }
        }
        else if ((collision_rectangle((bbox_left - 1), (bbox_top + 1), bbox_left, (bbox_bottom - 4), obj_solid, 0, 0) || (collision_rectangle((bbox_left - 1), (bbox_top + 1), bbox_left, (bbox_bottom - 4), obj_muncher, 0, 0) || (collision_rectangle((bbox_left - 1), (bbox_top + 1), bbox_left, (bbox_bottom - 4), obj_bullebill_base, 0, 0) || collision_rectangle((bbox_left - 1), (bbox_top + 1), bbox_left, (bbox_bottom - 4), obj_pinchos, 0, 0)))) && ((!collision_rectangle((bbox_left - 1), (bbox_top + 1), bbox_left, (bbox_bottom - 4), obj_blockparent, 0, 0)) && ((!collision_rectangle((bbox_left - 1), (bbox_top + 1), bbox_left, (bbox_bottom - 4), obj_block_rock, 0, 0)) && (!collision_rectangle((bbox_left - 1), (bbox_top + 1), bbox_left, (bbox_bottom - 4), obj_block_ice, 0, 0)))))
        {
            ready = 2
            audio_play_sound(scr_snd_thwomp(), 0, false)
            if instance_exists(obj_levelmanager)
            {
                with (obj_levelmanager)
                    alarm[11] = 1
            }
            with (instance_create((x - 12), (y - 16), obj_smoke))
            {
                sprite_index = spr_smokethwomp
                depth = -3
            }
            with (instance_create((x + 12), (y + 12), obj_smoke))
            {
                sprite_index = spr_smokethwomp
                depth = -3
            }
            alarm[0] = 60
        }
        else if overlap
        {
            if ((((bbox_left + bbox_right) * 0.5) > ((overlap.bbox_left + overlap.bbox_right) * 0.5)) || ((((bbox_left + bbox_right) * 0.5) == ((overlap.bbox_left + overlap.bbox_right) * 0.5)) && (id > overlap.id)))
            {
                ready = 2
                audio_play_sound(scr_snd_thwomp(), 0, false)
                if instance_exists(obj_levelmanager)
                {
                    with (obj_levelmanager)
                        alarm[11] = 1
                }
                with (instance_create((x - 12), (y - 16), obj_smoke))
                {
                    sprite_index = spr_smokethwomp
                    depth = -3
                }
                with (instance_create((x + 12), (y + 12), obj_smoke))
                {
                    sprite_index = spr_smokethwomp
                    depth = -3
                }
                alarm[0] = 60
            }
        }
    }
    else if (ready == 2)
    {
        hspeed = 0
        speed_max = 0
    }
    else if (ready == 3)
    {
        if (x >= (xstart + 1))
        {
            ready = 0
            hspeed = 0
            x = xstart
            image_index = 0
            image_xscale = 1
        }
        else
            event_user(3)
    }
}
if (direct_t == 3)
{
    if (global.apariencia == 0)
        sprite_index = spr_SMB_thwomp_h
    else if (global.apariencia == 1)
        sprite_index = spr_SMB3_thwomp_h
    else if (global.apariencia == 2)
        sprite_index = spr_thwomp_h
    if (((ready == 0) && (instance_exists(obj_mario) && ((obj_mario.y >= (y - 64)) && ((obj_mario.y < (y - 48)) && ((x == xstart) && ((obj_mario.x >= x) && (obj_mario.x <= (x + 32)))))))) || ((ready == 0) && (instance_exists(obj_mario) && ((obj_mario.y <= (y + 32)) && ((obj_mario.y > (y + 16)) && ((obj_mario.x >= x) && (obj_mario.x <= (x + 16))))))))
    {
        image_index = 1
        image_xscale = -1
    }
    else if (((ready == 0) && (instance_exists(obj_mario) && ((obj_mario.y < (y - 64)) && (obj_mario.x > (x + 160))))) || (((ready == 0) && (instance_exists(obj_mario) && ((obj_mario.y > (y + 32)) && (obj_mario.x > (x + 160))))) || (((ready == 0) && (instance_exists(obj_mario) && ((obj_mario.y >= (y - 64)) && ((obj_mario.y < (y - 48)) && (obj_mario.x > (x + 32)))))) || (((ready == 0) && (instance_exists(obj_mario) && ((obj_mario.y <= (y + 32)) && ((obj_mario.y > (y + 16)) && (obj_mario.x > (x + 32)))))) || ((ready == 0) && (instance_exists(obj_mario) && (obj_mario.x < x)))))))
    {
        image_index = 0
        image_xscale = 1
    }
    else if ((ready == 0) && (instance_exists(obj_mario) && ((obj_mario.y >= (y - 48)) && ((obj_mario.y <= (y + 16)) && (((x + 12) <= obj_mario.x) && (obj_mario.x < (x + 160)))))))
    {
        ready = 1
        image_index = 2
        image_xscale = -1
        if (collision_rectangle(bbox_right, (bbox_top + 1), (bbox_right + 1), (bbox_bottom - 4), obj_flipblock, 0, 0) || collision_rectangle(bbox_right, (bbox_top + 1), (bbox_right + 1), (bbox_bottom - 4), obj_block_pow_hold, 0, 0))
            hspeed = -1.3
    }
    else if (ready == 1)
    {
        if (swimming == 1)
        {
            hspeed += 0.06
            if (paracaidas == 1)
            {
                if ((hspeed > 1) && (speed_max == 0))
                {
                    hspeed = 0
                    speed_max = 1
                }
                else if ((hspeed > 0.5) && (speed_max == 1))
                    hspeed = 0.5
            }
            else if (hspeed > 1)
                hspeed = 1
        }
        else
        {
            hspeed += 0.08
            if (paracaidas == 1)
            {
                if ((hspeed > 2) && (speed_max == 0))
                {
                    hspeed = 0
                    speed_max = 1
                }
                else if ((hspeed > 0.8) && (speed_max == 1))
                    hspeed = 0.8
            }
            else if (hspeed > 3)
                hspeed = 3
        }
        col_flip = collision_rectangle(bbox_right, (bbox_top + 1), (bbox_right + 1), (bbox_bottom - 4), obj_flipblock, 0, 0)
        col_block_n = collision_rectangle(bbox_right, (bbox_top + 1), (bbox_right + 1), (bbox_bottom - 4), obj_blockparent, 0, 0)
        col_pow = collision_rectangle(bbox_right, (bbox_top + 1), (bbox_right + 1), (bbox_bottom - 4), obj_block_pow_hold, 0, 0)
        col_spring = collision_rectangle(bbox_right, (bbox_top + 1), (bbox_right + 1), (bbox_bottom - 4), obj_spring_land, 0, 0)
        col_helmet = collision_rectangle(bbox_right, (bbox_top + 1), (bbox_right + 1), (bbox_bottom - 4), obj_helmet, 0, 0)
        overlap = collision_rectangle(bbox_left, bbox_top, bbox_right, (bbox_bottom - 4), obj_thwomp, 0, 1)
        col_oneway = collision_rectangle(bbox_right, (bbox_top + 1), (bbox_right + 1), (bbox_bottom - 4), obj_onewaygate_left, 0, 0)
        if col_helmet
        {
            hspeed = -7
            audio_stop_sound(snd_helmet)
            audio_play_sound(snd_helmet, 0, false)
            with (instance_create(col_helmet.x, col_helmet.y, obj_smoke))
                sprite_index = spr_starhelmet
        }
        else if col_oneway
        {
            ready = 2
            audio_play_sound(scr_snd_thwomp(), 0, false)
            if instance_exists(obj_levelmanager)
            {
                with (obj_levelmanager)
                    alarm[11] = 1
            }
            with (instance_create((x - 12), (y - 16), obj_smoke))
            {
                sprite_index = spr_smokethwomp
                depth = -3
            }
            with (instance_create((x + 12), (y + 12), obj_smoke))
            {
                sprite_index = spr_smokethwomp
                depth = -3
            }
            alarm[0] = 60
            if (!audio_is_playing(snd_oneway))
                audio_play_sound(snd_oneway, 0, false)
            with (col_oneway)
                rot = 1
        }
        else if col_spring
        {
            col_spring.image_speed = 0.4
            audio_stop_sound(scr_snd_spring())
            audio_play_sound(scr_snd_spring(), 0, false)
            if (cont_spring != 3)
            {
                cont_spring += 1
                hspeed = -7
            }
            else
            {
                if (hspeed > 0)
                    hspeed = 0
                cont_spring = 0
                ready = 2
                alarm[0] = 1
            }
        }
        else if ((collision_rectangle(bbox_right, (bbox_top + 1), (bbox_right + 1), (bbox_bottom - 4), obj_solid, 0, 0) || (collision_rectangle(bbox_right, (bbox_top + 1), (bbox_right + 1), (bbox_bottom - 4), obj_muncher, 0, 0) || (collision_rectangle(bbox_right, (bbox_top + 1), (bbox_right + 1), (bbox_bottom - 4), obj_bullebill_base, 0, 0) || collision_rectangle(bbox_right, (bbox_top + 1), (bbox_right + 1), (bbox_bottom - 4), obj_pinchos, 0, 0)))) && ((!collision_rectangle(bbox_right, (bbox_top + 1), (bbox_right + 1), (bbox_bottom - 4), obj_blockparent, 0, 0)) && ((!collision_rectangle(bbox_right, (bbox_top + 1), (bbox_right + 1), (bbox_bottom - 4), obj_block_rock, 0, 0)) && (!collision_rectangle(bbox_right, (bbox_top + 1), (bbox_right + 1), (bbox_bottom - 4), obj_block_ice, 0, 0)))))
        {
            ready = 2
            audio_play_sound(scr_snd_thwomp(), 0, false)
            if instance_exists(obj_levelmanager)
            {
                with (obj_levelmanager)
                    alarm[11] = 1
            }
            with (instance_create((x - 12), (y - 16), obj_smoke))
            {
                sprite_index = spr_smokethwomp
                depth = -3
            }
            with (instance_create((x + 12), (y + 12), obj_smoke))
            {
                sprite_index = spr_smokethwomp
                depth = -3
            }
            alarm[0] = 60
        }
        else if overlap
        {
            if ((((bbox_left + bbox_right) * 0.5) > ((overlap.bbox_left + overlap.bbox_right) * 0.5)) || ((((bbox_left + bbox_right) * 0.5) == ((overlap.bbox_left + overlap.bbox_right) * 0.5)) && (id > overlap.id)))
            {
            }
            else
            {
                ready = 2
                audio_play_sound(scr_snd_thwomp(), 0, false)
                if instance_exists(obj_levelmanager)
                {
                    with (obj_levelmanager)
                        alarm[11] = 1
                }
                with (instance_create((x - 12), (y - 16), obj_smoke))
                {
                    sprite_index = spr_smokethwomp
                    depth = -3
                }
                with (instance_create((x + 12), (y + 12), obj_smoke))
                {
                    sprite_index = spr_smokethwomp
                    depth = -3
                }
                alarm[0] = 60
            }
        }
    }
    else if (ready == 2)
    {
        hspeed = 0
        speed_max = 0
    }
    else if (ready == 3)
    {
        if (x <= (xstart - 1))
        {
            ready = 0
            hspeed = 0
            x = xstart
            image_index = 0
            image_xscale = 1
        }
        else
            event_user(3)
    }
}

