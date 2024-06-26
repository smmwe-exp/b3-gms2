if (room == rm_editor)
    instance_create(0, 0, obj_load_level)
if (global.levelmusic != levelmusic)
{
    audio_stop_sound(global.levelmusic)
    global.levelmusic = levelmusic
}
global.yoshi = 0
if (leveltime > 0)
{
    if (global.timer == 0)
    {
        global.timer = leveltime
        alarm[2] = 50
    }
    else if (global.timer > 0)
        alarm[2] = 50
}
if ((room == global.checkpointroom) && ((room != rm_guardabot_play) && (room != rm_title)))
{
    if instance_exists(obj_checkpoint)
    {
        with (obj_checkpoint)
        {
            if ((x == global.checkpoint_x) && (y == global.checkpoint_y))
            {
                with (other.id)
                    event_user(0)
                instance_create(global.checkpoint_x, (global.checkpoint_y - 16), obj_mario)
            }
        }
    }
}
if ((global.mariostart == 0) && ((room != rm_editor) && (room != rm_title)))
{
    global.mariostart = 1
    instance_create(0, 0, obj_mariostart)
}
if ((room == rm_guardabot_play) || (room == rm_title))
{
    event_user(5)
    if ((obj_persistent.modo_android == 1) && (global.controles_tactiles == 1))
    {
        with (obj_persistent)
        {
            event_user(2)
            event_user(3)
        }
    }
}
if (global.pswitch > 0)
{
    event_user(1)
    alarm[10] = max(global.pswitch, 30)
    global.pswitch = 0
}
if (global.star > 0)
{
    with (instance_create(x, y, obj_invincibility))
        alarm[0] = max(global.star, 30)
    global.star = 0
}

