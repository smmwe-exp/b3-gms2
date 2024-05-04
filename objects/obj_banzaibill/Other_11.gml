imdead = instance_create(x, y, obj_enemy_dead)
imdead.direct = 1
if ((global.apariencia == 0) || (global.apariencia == 1))
{
    imdead.sprite_index = sprite_index
    imdead.image_speed = 0
    if ((global.bg_level == "castle") || ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1))))
        imdead.image_index = 1
    else
        imdead.image_index = 0
}
else if (global.apariencia == 2)
{
    imdead.sprite_index = sprite_index
    imdead.image_speed = 0
}
imdead.image_angle = rotacion
imdead.direct_y = direct
hspeed = 0.6
instance_destroy()

