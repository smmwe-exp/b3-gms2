vspeed = 0
y = ystart
if (wings == 1)
{
    wings = 0
    with (instance_create((w_wings.x - 15), (w_wings.y - 4), obj_wings_dead))
        direct = 1
    with (instance_create((w_wings.x + 32), (w_wings.y - 4), obj_wings_dead))
        direct = -1
    with (w_wings)
        instance_destroy()
    w_wings = 0
}
if (sprout != -1)
{
    if (progresivo == 1)
    {
        if (global.powerup == 0)
        {
            with (instance_create(x, y, obj_powerupsprout))
                sprite_index = scr_constant_get_sprite(1)
        }
        else
        {
            with (instance_create(x, y, obj_powerupsprout))
                sprite_index = scr_constant_get_sprite(other.sprout)
        }
    }
    else
    {
        with (instance_create(x, y, obj_powerupsprout))
            sprite_index = scr_constant_get_sprite(other.sprout)
    }
}
if (global.apariencia == 0)
{
    sprite_index = spr_SMB_empty_block
    image_speed = 0
    if ((global.bg_level == "snow") && (global.modo_noche == 1))
        image_index = 4
    else if (global.bg_level == "snow")
        image_index = 3
    else if (global.bg_level == "castle")
        image_index = 2
    else if ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1)))
        image_index = 1
    else
        image_index = 0
}
else if (global.apariencia == 1)
{
    sprite_index = spr_SMB3_empty_block
    image_speed = 0
    if ((global.bg_level == "snow") && (global.modo_noche == 1))
        image_index = 3
    else if (global.bg_level == "castle")
        image_index = 2
    else if ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1)))
        image_index = 1
    else
        image_index = 0
}
else if (global.apariencia == 2)
    sprite_index = spr_qblock_empty
else if (global.apariencia == 3)
{
    sprite_index = spr_NSMBU_qblock_empty
    image_speed = 0
    if (global.bg_level == "castle")
        image_index = 2
    else if ((global.bg_level == "underground") || ((global.bg_level == "ghost") || (global.modo_noche == 1)))
        image_index = 1
    else
        image_index = 0
}
else if (global.apariencia == 4)
{
    sprite_index = spr_SMB2_empty
    image_speed = 0
    if ((global.bg_level == "castle") || ((global.bg_level == "underground") || ((global.bg_level == "ghost") || (global.modo_noche == 1))))
        image_index = 1
    else
        image_index = 0
}

