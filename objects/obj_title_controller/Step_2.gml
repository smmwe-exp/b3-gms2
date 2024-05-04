if ((global.bg_level == "castle") || ((global.bg_level == "underground") || ((global.bg_level == "ghost") || (global.modo_noche == 1))))
    sprite = 2681
else
    sprite = 2680
if (ready == 1)
{
    if instance_exists(obj_mario)
    {
        with (obj_mario)
            disablecontrols = 1
    }
    if (anim >= 21)
        room_goto(rm_editor)
    else
        anim += 0.5
}

