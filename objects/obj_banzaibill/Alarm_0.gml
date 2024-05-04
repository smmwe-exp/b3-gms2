if (direct_t == 1)
{
    with (instance_create((x + 32), (y - 8), obj_smoke))
    {
        sprite_index = spr_smokespin
        depth = 0
    }
}
else if (direct_t == 2)
{
    with (instance_create((x - 8), (y - 32), obj_smoke))
    {
        sprite_index = spr_smokespin
        depth = 0
    }
}
if (direct_t == 3)
{
    with (instance_create((x - 32), (y - 8), obj_smoke))
    {
        sprite_index = spr_smokespin
        depth = 0
    }
}
else if (direct_t == 4)
{
    with (instance_create((x - 8), (y + 32), obj_smoke))
    {
        sprite_index = spr_smokespin
        depth = 0
    }
}
alarm[0] = 20

