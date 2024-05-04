flagpole = -1
ready4 = 0
in_solid = 0
sprite_index = scr_mariogoal()
image_speed = 0
image_index = 0
with (obj_levelmanager)
{
    event_user(3)
    alarm[2] = 0
    alarm[4] = -1
}
anim = 0
isflashing = 0
direct = 1
global.checkpoint = -4
global.pinkcoins_count = 0
global.pink_coins = 0
global.pink_coin1_x = 0
global.pink_coin1_y = 0
global.pink_coin2_x = 0
global.pink_coin2_y = 0
global.pink_coin3_x = 0
global.pink_coin3_y = 0
global.pink_coin4_x = 0
global.pink_coin4_y = 0
global.pink_coin5_x = 0
global.pink_coin5_y = 0
global.pink_coin6_x = 0
global.pink_coin6_y = 0
global.pink_coin7_x = 0
global.pink_coin7_y = 0
global.pink_coin8_x = 0
global.pink_coin8_y = 0
global.pink_coin9_x = 0
global.pink_coin9_y = 0
global.pink_coin10_x = 0
global.pink_coin10_y = 0
ready = 0
ready2 = 0
ready3 = 0
out_view = 0
stream = -1
alarm[11] = 30
swimming = 0
swim = 0
if ((global.timer % 10) == 6)
    global.fireworks = 6
else if ((global.timer % 10) == 3)
    global.fireworks = 3
else if ((global.timer % 10) == 1)
    global.fireworks = 1
if instance_exists(obj_enemyparent)
{
    with (obj_enemyparent)
    {
        if (object_index != obj_grinder)
        {
            instance_create(x, y, obj_detroy_enemy)
            instance_destroy()
        }
    }
}
if instance_exists(obj_enemyparent_held)
{
    with (obj_enemyparent_held)
    {
        instance_create(x, y, obj_detroy_enemy)
        instance_destroy()
    }
}
if instance_exists(obj_bossparent)
{
    with (obj_bossparent)
    {
        instance_create(x, y, obj_detroy_enemy)
        instance_destroy()
    }
}
if instance_exists(obj_clown)
{
    with (obj_clown)
    {
        instance_create(x, y, obj_detroy_enemy)
        instance_destroy()
    }
}
if instance_exists(obj_powerupparent)
{
    with (obj_powerupparent)
    {
        instance_create(x, y, obj_detroy_enemy)
        instance_destroy()
    }
}

