vspeed = 0
y = ystart
ready = 0
if (sprout != -1)
{
    with (instance_create(x, y, obj_powerupsprout))
        sprite_index = scr_constant_get_sprite(other.sprout)
    sprout = -1
}

