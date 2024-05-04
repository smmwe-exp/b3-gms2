if ((active == 1) && ((subimage != 10) && ((subimage != 11) && (subimage != 12))))
{
    image_speed = 0.2
    if (subimage == 0)
        sprite_index = spr_overworld_anim
    else if (subimage == 1)
        sprite_index = spr_underground_anim
    else if (subimage == 2)
        sprite_index = spr_underwater_anim
    else if (subimage == 3)
        sprite_index = spr_desert_anim
    else if (subimage == 4)
        sprite_index = spr_snow_anim
    else if (subimage == 5)
        sprite_index = spr_sky_anim
    else if (subimage == 6)
        sprite_index = spr_forest_anim
    else if (subimage == 7)
        sprite_index = spr_ghost_anim
    else if (subimage == 8)
        sprite_index = spr_airship_anim
    else if (subimage == 9)
        sprite_index = spr_castle_anim
}
else
{
    sprite_index = spr_cards_entorno
    image_speed = 0
    image_index = subimage
}

