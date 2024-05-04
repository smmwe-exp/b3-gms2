if (ready == 1)
{
    anim += 1.5
    __background_set( e__BG.Alpha, 0, __background_get( e__BG.Alpha, 0 ) + (0.1) )
    if (anim > 86)
    {
        anim = 86
        ready = 0
    }
    if (__background_get( e__BG.Alpha, 0 ) > 0.9)
        __background_set( e__BG.Alpha, 0, 1 )
}
y = ((__view_get( e__VW.YView, 0 ) + 182) + anim)

