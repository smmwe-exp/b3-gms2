if ((global.bg_level == "underwater") || ((instance_exists(obj_lava_water) && ((y + 8) >= (obj_lava_water.y - 12))) || (((global.modo_noche == 1) && (global.bg_level == "sky")) || (((global.modo_noche == 1) && (global.bg_level == "airship")) || (instance_exists(obj_lava_water) && ((y > (obj_lava_water.y + 4)) && ((global.bg_level == "forest") && (global.modo_noche == 0))))))))
    swimming = 1
else
    swimming = 0
event_user(2)
event_user(3)
event_user(4)
if (object_index != obj_bowser)
{
    if (hspeed > 0)
        direct = 1
    else if (hspeed < 0)
        direct = -1
}
if (instance_exists(obj_lava_water) && (((y + 8) >= (obj_lava_water.y - 12)) && ((global.bg_level == "castle") && ((obj_levelmanager.editor == 0) && ((object_index != obj_grinder) && ((object_index != obj_thwomp) && ((object_index != obj_podoboo) && ((object_index != obj_cheepcheep) && ((object_index != obj_boo) && ((object_index != obj_bobomb) && ((object_index != obj_bobomb_ready) && (object_index != obj_pokey))))))))))))
{
    if ((global.apariencia != 0) && (global.apariencia != 4))
    {
        with (instance_create(x, (y - 8), obj_smoke))
        {
            if (global.apariencia == 1)
                sprite_index = spr_SMB3_splash_lava
            else if (global.apariencia == 2)
                sprite_index = spr_splash_lava
            depth = -12
        }
    }
    if (object_index == obj_bowser)
    {
        if (global.apariencia == 1)
            audio_play_sound(snd_SMB3_bowser_dead, 0, false)
        else if (global.apariencia == 2)
            audio_play_sound(snd_bowser_dead, 0, false)
        with (instance_create(x, y, obj_enemyparent_lava))
        {
            if (global.apariencia == 1)
                sprite_index = spr_SMB3_bowser_deads
            else if (global.apariencia == 2)
                sprite_index = spr_bowser_walk
            direct = other.direct
        }
    }
    else
    {
        with (instance_create(x, y, obj_enemyparent_lava))
        {
            sprite_index = other.sprite_index
            direct = other.direct
        }
    }
    instance_destroy()
}
if (instance_exists(obj_lava_water) && (((y + 8) >= obj_lava_water.y) && ((global.bg_level == "forest") && ((global.modo_noche == 1) && ((obj_levelmanager.editor == 0) && ((object_index != obj_grinder) && ((object_index != obj_thwomp) && ((object_index != obj_podoboo) && ((object_index != obj_cheepcheep) && ((object_index != obj_boo) && ((object_index != obj_bobomb) && ((object_index != obj_bobomb_ready) && (object_index != obj_pokey)))))))))))))
{
    if ((global.apariencia != 0) || (global.apariencia != 4))
    {
        with (instance_create(x, (y - 8), obj_smoke))
        {
            if (global.apariencia == 1)
                sprite_index = spr_SMB3_splash_lava_purple
            else if (global.apariencia == 2)
                sprite_index = spr_splash_lava_purple
            depth = -12
        }
    }
    if (object_index == obj_bowser)
    {
        audio_play_sound(snd_SMB3_bowser_dead, 0, false)
        with (instance_create(x, y, obj_enemyparent_lava))
        {
            if (global.apariencia == 1)
                sprite_index = spr_SMB3_bowser_deads
            else if (global.apariencia == 2)
                sprite_index = spr_bowser_walk
            direct = other.direct
        }
    }
    else
    {
        with (instance_create(x, y, obj_enemyparent_lava))
        {
            sprite_index = other.sprite_index
            direct = other.direct
        }
    }
    instance_destroy()
}

