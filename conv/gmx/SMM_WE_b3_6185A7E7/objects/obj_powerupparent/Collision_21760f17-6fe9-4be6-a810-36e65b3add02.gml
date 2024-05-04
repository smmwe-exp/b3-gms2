if ((global.powerup == 0) && (collision_rectangle(other.bbox_left, (other.bbox_top - 16), other.bbox_right, other.bbox_top, obj_solid, 1, 0) || (collision_rectangle(other.bbox_left, (other.bbox_top - 16), other.bbox_right, other.bbox_top, obj_pinchos, 1, 0) || (collision_rectangle(other.bbox_left, (other.bbox_top - 16), other.bbox_right, other.bbox_top, obj_bullebill_base, 1, 0) || collision_rectangle(other.bbox_left, (other.bbox_top - 16), other.bbox_right, other.bbox_top, obj_muncher, 1, 0)))))
{
    if ((other.holding == 2) && ((global.apariencia == 2) || (global.apariencia == 4)))
    {
        other.isduck = 1
        other.isduckhold = 1
    }
    else
        other.isduck = 1
}
with (instance_create(x, y, obj_score))
    event_user(3)
if (global.powerup != scr_sprite_get_constant(sprite_index))
{
    if (object_index == obj_superflower)
    {
        if ((!audio_is_playing(scr_switchsong())) && (!audio_is_playing(scr_snd_starman())))
            audio_stop_sound(obj_levelmanager.levelmusic)
        with (obj_levelmanager)
        {
            levelmusic_temp = levelmusic
            levelmusic = snd_music_mario_land
        }
        if ((!audio_is_playing(scr_switchsong())) && (!audio_is_playing(scr_snd_starman())))
            audio_play_sound(obj_levelmanager.levelmusic, 1, true)
    }
    else if (global.powerup == 0)
    {
        if instance_exists(obj_mario)
        {
            with (instance_create(0, 0, obj_mario_transform2))
            {
                c_powerup = 1
                sprite_powerup = other.sprite_index
            }
            if (object_index == obj_superflower)
            {
                audio_stop_sound(snd_SMB_powerup_superflower)
                audio_play_sound(snd_SMB_powerup_superflower, 0, false)
            }
            else if (object_index == obj_megamushroom)
            {
                audio_stop_sound(snd_SMB_powerup_supermushroom)
                audio_play_sound(snd_SMB_powerup_supermushroom, 0, false)
            }
            else
            {
                audio_stop_sound(scr_snd_powerup())
                audio_play_sound(scr_snd_powerup(), 0, false)
            }
        }
    }
    else if (global.powerup == 3)
    {
        if instance_exists(obj_mario)
        {
            if instance_exists(obj_cap_mario)
            {
                with (obj_cap_mario)
                {
                    cap_invisible = 1
                    visible = 0
                }
            }
            with (instance_create(0, 0, obj_mario_transform2))
            {
                c_powerup = 1
                cap = 2
                sprite_powerup = other.sprite_index
            }
            audio_stop_sound(scr_snd_powerup())
            audio_play_sound(scr_snd_powerup(), 0, false)
        }
    }
    else
    {
        if (global.powerup == -50)
        {
            if ((!audio_is_playing(scr_switchsong())) && (!audio_is_playing(scr_snd_starman())))
                audio_stop_sound(obj_levelmanager.levelmusic)
            with (obj_levelmanager)
            {
                levelmusic = levelmusic_temp
                levelmusic_temp = 0
            }
            if ((!audio_is_playing(scr_switchsong())) && (!audio_is_playing(scr_snd_starman())))
                audio_play_sound(obj_levelmanager.levelmusic, 1, true)
        }
        if instance_exists(obj_mario)
        {
            with (instance_create(0, 0, obj_mario_transform2))
            {
                c_powerup = 1
                sprite_powerup = other.sprite_index
            }
            if (object_index == obj_superflower)
            {
                audio_stop_sound(snd_SMB_powerup_superflower)
                audio_play_sound(snd_SMB_powerup_superflower, 0, false)
            }
            else if (object_index == obj_megamushroom)
            {
                audio_stop_sound(snd_SMB_powerup_supermushroom)
                audio_play_sound(snd_SMB_powerup_supermushroom, 0, false)
            }
            else
            {
                audio_stop_sound(scr_snd_powerup())
                audio_play_sound(scr_snd_powerup(), 0, false)
            }
        }
    }
}
else
{
    audio_stop_sound(scr_snd_powerup())
    audio_play_sound(scr_snd_powerup(), 0, false)
}
instance_destroy()

