x = (((__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )) - 26) + obj_cursor.anim_right)
y = (__view_get( e__VW.YView, 0 ) + 126)
if (active == 1)
{
    sprite_index = spr_clean_selected
    if (active2 == 0)
    {
        alarm[0] = 1
        active2 = 1
    }
}
else
{
    sprite_index = spr_clean
    alarm[0] = -1
    image_index = 0
    active2 = 0
}

