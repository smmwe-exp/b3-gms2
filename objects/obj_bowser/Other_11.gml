instance_create((x - 16), (y + 8), obj_smoke)
instance_create((x + 16), (y + 8), obj_smoke)
sprite_index = spr_SMB3_bowser_attack
image_index = 1
search = 1
aplastar = 0
big_jump = 0
audio_play_sound(snd_SMB3_thwomp, 0, false)
if instance_exists(obj_mario)
{
    if (obj_mario.state < 2)
    {
        with (obj_mario)
        {
            if (!instance_exists(obj_shake_mario))
                instance_create(x, (y + 5), obj_shake_mario)
            stuntime = 120
            shake = 1
            hspeed = 0
            disablecontrols = 1
        }
    }
}
alarm[2] = 20

