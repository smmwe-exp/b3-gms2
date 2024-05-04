if ((ready == 1) && ((obj_levelmanager.editor == 0) && ((direct_t == 1) && (y < other.y))))
{
    instance_create(other.x, other.y, obj_smoke)
    with (other.id)
        instance_destroy()
}

