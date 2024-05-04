if (!hunger)
{
    hunger = 1
    ready = 1
    alarm[0] = 8
    foodsprite = other.sprite_index
    foodoffset = 8
    berry = other.sprite_index
    with (other.id)
        instance_destroy()
}

