var enemy;
if instance_exists(obj_enemyparent)
{
    with (obj_enemyparent)
    {
        if (object_index == obj_boo)
            boo_huida = 1
        else if (object_index == obj_boo)
            boo_huida = 1
        else if ((object_index == obj_egg) || (object_index == obj_egg_red))
        {
            with (instance_create(x, y, obj_smoke))
                sprite_index = spr_destroy_enemy
            instance_destroy()
        }
        else if (object_index != obj_grinder)
        {
            enemy = instance_create(x, y, obj_enemy_dead_castle)
            enemy.sprite_index = sprite_index
            enemy.image_index = image_index
            instance_destroy()
        }
    }
}
if instance_exists(obj_bossparent)
{
    with (obj_bossparent)
    {
        enemy = instance_create(x, y, obj_enemy_dead_castle)
        enemy.sprite_index = sprite_index
        enemy.image_index = image_index
        instance_destroy()
    }
}

