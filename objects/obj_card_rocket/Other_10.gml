if instance_exists(obj_parent_resource)
{
    with (obj_parent_resource)
        instance_destroy()
}
if instance_exists(obj_parent_sounds)
{
    with (obj_parent_sounds)
        instance_destroy()
}
if instance_exists(obj_decoracion_1)
{
    with (obj_decoracion_1)
        instance_destroy()
}
if instance_exists(obj_decoracion_2)
{
    with (obj_decoracion_2)
        instance_destroy()
}
if instance_exists(obj_decoracion_3)
{
    with (obj_decoracion_3)
        instance_destroy()
}
if instance_exists(obj_decoracion_4)
{
    with (obj_decoracion_4)
        instance_destroy()
}
with (obj_creator_jugar_editar)
    alarm[0] = 5
ready = 0

