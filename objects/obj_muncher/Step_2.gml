var enemigos, jefes, enemyhold;
enemigos = collision_rectangle(bbox_left, (bbox_bottom - 1), bbox_right, (bbox_bottom + vspeed), obj_enemyparent, 0, 0)
jefes = collision_rectangle(bbox_left, (bbox_bottom - 1), bbox_right, (bbox_bottom + vspeed), obj_bossparent, 0, 0)
enemyhold = collision_rectangle(bbox_left, (bbox_bottom - 1), bbox_right, (bbox_bottom + vspeed), obj_enemyparent_held, 0, 0)
if (enemigos && ((enemigos.object_index != obj_banzaibill) && ((enemigos.object_index != obj_podoboo) && ((enemigos.object_index != obj_angrysun) && ((enemigos.object_index != obj_cheepcheep) && ((enemigos.object_index != obj_thwomp) && ((enemigos.object_index != obj_grinder) && ((enemigos.object_index != obj_boo) && ((enemigos.object_index != obj_cannonball) && ((enemigos.object_index != obj_cannonball_red) && ((vspeed > 0) && (bbox_bottom < (enemigos.yprevious + 5)))))))))))))
{
    if (enemigos.vspeed == 0)
    {
        if ((enemigos.object_index == obj_bobomb) || (enemigos.object_index == obj_bobomb_ready))
        {
            with (enemigos)
            {
                instance_create(x, y, obj_explosion)
                instance_destroy()
            }
        }
        else
        {
            audio_play_sound(scr_snd_kick(), 0, false)
            instance_create(enemigos.x, (enemigos.y - 8), obj_spinthump)
            with (enemigos)
                event_user(0)
        }
    }
    else
        enemigos.y = (y + 16)
}
if (jefes && ((vspeed > 0) && (bbox_bottom < (jefes.yprevious + 5))))
{
    if (jefes.vspeed == 0)
    {
        audio_play_sound(scr_snd_kick(), 0, false)
        instance_create(jefes.x, (jefes.y - 8), obj_spinthump)
        with (jefes)
            event_user(0)
    }
    else
        jefes.y = (y + 16)
}
if (enemyhold && ((vspeed > 0) && (bbox_bottom < (enemyhold.yprevious + 5))))
{
    if (enemyhold.vspeed == 0)
    {
        audio_play_sound(scr_snd_kick(), 0, false)
        instance_create(enemyhold.x, (enemyhold.y - 8), obj_spinthump)
        with (enemyhold)
            event_user(0)
    }
    else
        enemyhold.y = (y + 16)
}

