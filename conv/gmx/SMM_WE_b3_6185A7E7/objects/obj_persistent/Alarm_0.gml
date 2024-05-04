mode = 0
if (!instance_exists(obj_mariostart))
{
    done = 0
    instance_activate_all()
}
if background_exists(back)
    background_delete(back)

