draw_self()
draw_sprite(spr_username_login, global.idioma, (__view_get( e__VW.XView, 0 ) + 94), (__view_get( e__VW.YView, 0 ) + 65))
draw_sprite(spr_password_login, global.idioma, (__view_get( e__VW.XView, 0 ) + 94), (__view_get( e__VW.YView, 0 ) + 104))
draw_sprite(spr_remember_user, global.idioma, (__view_get( e__VW.XView, 0 ) + 94), (__view_get( e__VW.YView, 0 ) + 144))
if (internet == 0)
    draw_sprite(spr_no_internet, global.idioma, (__view_get( e__VW.XView, 0 ) + 132), (__view_get( e__VW.YView, 0 ) + 189))

