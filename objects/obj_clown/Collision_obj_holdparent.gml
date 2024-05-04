var shell_col;
if ((inenemy == 0) && ((inmario == 0) && (obj_levelmanager.editor == 0)))
{
    if ((other.bbox_bottom < ((bbox_top - vspeed) + 5)) && (other.vspeed > 0))
    {
        if (other.object_index == obj_shell)
        {
            shell_col = instance_create(other.x, other.y, obj_shell_held)
            shell_col.sprite_index = other.sprite_index
            with (other.id)
                instance_destroy()
        }
    }
}

