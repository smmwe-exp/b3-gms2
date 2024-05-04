s = (filter + 1)
if (global.sm4j_style == 1)
{
    if instance_exists(obj_d_pad)
    {
        with (obj_d_pad)
            instance_destroy()
    }
    mobile_keys[0] = virtual_key_add((32 * s), (80 * s), (32 * s), (64 * s), global.arriba)
    mobile_keys[1] = virtual_key_add((32 * s), (178 * s), (32 * s), (64 * s), global.abajo)
    mobile_keys[2] = virtual_key_add((-34 * s), (144 * s), (64 * s), (32 * s), global.izquierda)
    mobile_keys[3] = virtual_key_add((66 * s), (144 * s), (64 * s), (32 * s), global.derecha)
}
else if (global.sm4j_style == 2)
{
    if instance_exists(obj_d_pad)
    {
        with (obj_d_pad)
            instance_destroy()
    }
    mobile_keys[0] = virtual_key_add((34 * s), (118 * s), (32 * s), (32 * s), global.arriba)
    mobile_keys[1] = virtual_key_add((34 * s), (182 * s), (32 * s), (32 * s), global.abajo)
    mobile_keys[2] = virtual_key_add((2 * s), (150 * s), (32 * s), (32 * s), global.izquierda)
    mobile_keys[3] = virtual_key_add((66 * s), (150 * s), (32 * s), (32 * s), global.derecha)
}
else
{
    mobile_keys[0] = virtual_key_add(((pad_x - 32) * s), ((pad_y - 74) * s), (64 * s), (64 * s), global.arriba)
    mobile_keys[1] = virtual_key_add(((pad_x - 32) * s), ((pad_y + 9) * s), (64 * s), (64 * s), global.abajo)
    mobile_keys[2] = virtual_key_add(((pad_x - 74) * s), ((pad_y - 32) * s), (64 * s), (64 * s), global.izquierda)
    mobile_keys[3] = virtual_key_add(((pad_x + 10) * s), ((pad_y - 32) * s), (64 * s), (64 * s), global.derecha)
    instance_create(x, y, obj_d_pad)
}
instance_create(x, y, obj_inhibidor_vk)
vk_movimientos = 1

