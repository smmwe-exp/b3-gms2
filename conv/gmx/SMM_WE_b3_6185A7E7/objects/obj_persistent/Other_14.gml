virtual_key_delete(mobile_keys[0])
virtual_key_delete(mobile_keys[1])
virtual_key_delete(mobile_keys[2])
virtual_key_delete(mobile_keys[3])
if instance_exists(obj_inhibidor_vk)
{
    with (obj_inhibidor_vk)
        instance_destroy()
}
if instance_exists(obj_d_pad)
{
    with (obj_d_pad)
        instance_destroy()
}
vk_movimientos = 0

