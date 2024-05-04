if (obj_levelmanager.editor == 1)
{
    if (global.apariencia == 1)
        sprite_index = spr_SMB3_pblock
    else if (global.apariencia == 2)
        sprite_index = spr_pblock
}
if (mysolid != obj_lighting)
{
    mysolid.x = x
    mysolid.y = y
}
if audio_is_playing(scr_snd_switchsong())
{
    if (mysolid == obj_lighting)
    {
        event_user(0)
        mysolid = instance_create(x, y, obj_solid)
    }
    image_index = 0
}
else
{
    if ((mysolid != obj_lighting) && instance_exists(mysolid))
    {
        with (mysolid)
            instance_destroy()
        mysolid = 0
    }
    image_index = 1
}
if (outside_view() && (image_index == 0))
    event_user(0)

