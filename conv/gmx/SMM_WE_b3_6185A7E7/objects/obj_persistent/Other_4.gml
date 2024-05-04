__view_set( e__VW.Visible, 0, true )
view_enabled = true
__view_set( e__VW.WPort, 0, global.gw )
__view_set( e__VW.HPort, 0, global.gh )
__view_set( e__VW.WView, 0, global.gw )
__view_set( e__VW.HView, 0, global.gh )
__view_set( e__VW.VBorder, 0, (global.gh / 2) )
__view_set( e__VW.HBorder, 0, (global.gw / 2) )
if ((room != rm_guardabot) && ((room != rm_guardabot_play) && (room != rm_title)))
{
    global.etiqueta1_temp = -1
    global.etiqueta2_temp = -1
}
if (room == rm_presentacion)
    alarm[4] = 120
if (mode == 1)
    event_user(0)

