if ((mytopid != obj_lighting) && ((mytopid != obj_flagpole) && instance_exists(mytopid)))
{
    with (mytopid)
        instance_destroy()
}

