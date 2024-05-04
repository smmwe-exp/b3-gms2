var create_tuberia;
with (instance_create((id_tuberia.x + 8), id_tuberia.y, obj_curtainin))
    fallow = 1
if (id_tuberia.direct_t == 0)
{
    create_tuberia = instance_create(id_tuberia.x, (id_tuberia.y - 16), obj_player_warp)
    with (create_tuberia)
    {
        direction = 90
        direct = 1
        salir = 1
    }
}
else if (id_tuberia.direct_t == 1)
{
    create_tuberia = instance_create(id_tuberia.x, (id_tuberia.y - 17), obj_player_warp)
    with (create_tuberia)
    {
        direction = 0
        direct = 1
        salir = 1
    }
}
else if (id_tuberia.direct_t == 2)
{
    create_tuberia = instance_create(id_tuberia.x, (id_tuberia.y - 16), obj_player_warp)
    with (create_tuberia)
    {
        direction = 270
        direct = 1
        salir = 1
    }
}
else if (id_tuberia.direct_t == 3)
{
    create_tuberia = instance_create(id_tuberia.x, (id_tuberia.y - 17), obj_player_warp)
    with (create_tuberia)
    {
        direction = 180
        direct = -1
        salir = 1
    }
}

