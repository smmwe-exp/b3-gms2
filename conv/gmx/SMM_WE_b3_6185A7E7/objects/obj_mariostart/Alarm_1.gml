instance_activate_all()
obj_persistent.done = 0
with (obj_levelmanager)
    event_user(5)
if ((obj_persistent.modo_android == 1) && (global.controles_tactiles == 1))
{
    if ((room != rm_desafio_super_mario) && ((room != rm_super_experto) && ((room != rm_title) && ((room != rm_logo) && ((room != rm_victory) && ((room != rm_gameover) && ((room != rm_guardabot) && (room != rm_editor))))))))
    {
        with (obj_persistent)
        {
            event_user(2)
            event_user(3)
        }
    }
}
instance_destroy()

