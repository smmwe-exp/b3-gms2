my_object = instance_create(x, y, object)
with (my_object)
{
    sprite_index = other.sprite
    image_speed = other.velocidad
    visible = 0
    sonido = other.sonido
}
if instance_exists(obj_levelmanager)
{
    with (obj_levelmanager)
        alarm[11] = 1
}
can_active = 1

