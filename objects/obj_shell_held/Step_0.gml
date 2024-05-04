var valor, valor_water, check;
if ((global.bg_level == "underwater") || (((global.modo_noche == 1) && (global.bg_level == "sky")) || (((global.modo_noche == 1) && (global.bg_level == "airship")) || (instance_exists(obj_lava_water) && ((y >= (obj_lava_water.y + 16)) && ((global.bg_level == "forest") && (global.modo_noche == 0)))))))
    swimming = 1
else
    swimming = 0
if ((mytopid != obj_lighting) && (mytopid != obj_flagpole))
{
    valor = 1.2
    valor_water = 0.7
}
else if (shell_drop == 1)
{
    valor = 3.4
    valor_water = 1.8
}
else
{
    valor = 3
    valor_water = 1.8
}
if (obj_levelmanager.editor == 0)
{
    if ((global.bg_level == "underwater") || (((global.bg_level == "sky") && (global.modo_noche == 1)) || (((global.bg_level == "airship") && (global.modo_noche == 1)) || (instance_exists(obj_lava_water) && ((y >= (obj_lava_water.y + 16)) && ((global.bg_level == "forest") && (global.modo_noche == 0)))))))
    {
        if (hspeed > valor_water)
        {
            hspeed -= 0.08
            if (hspeed <= valor_water)
                hspeed = valor_water
        }
        else if (hspeed < (-valor_water))
        {
            hspeed += 0.08
            if (hspeed >= (-valor_water))
                hspeed = (-valor_water)
        }
    }
    else if (hspeed > valor)
    {
        hspeed -= 0.05
        if (hspeed <= valor)
            hspeed = valor
    }
    else if (hspeed < (-valor))
    {
        hspeed += 0.05
        if (hspeed >= (-valor))
            hspeed = (-valor)
    }
}
if ((fall == 0) && (vspeed == 0))
{
    if (!collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + 1), obj_solidtop, 1, 0))
    {
        move_snap(4, 2)
        y += 3
        fall = 1
    }
}
else if ((fall == 1) && (gravity == 0))
    fall = 0
prevhspeed = hspeed
prevvspeed = vspeed
event_user(3)
if (!instance_exists(obj_deadmario))
    event_user(4)
else
{
    gravity = 0
    speed = 0
}
if (hspeed != prevhspeed)
{
    if (!outside_view())
        audio_play_sound(snd_bump, 0, false)
    hardness = 100
    alarm[0] = 2
    instance_create((x + prevhspeed), y, obj_blockbumper)
}
if (vspeed < 0)
    instance_create(x, -7, obj_blockbumper)
if (instance_exists(obj_lava_water) && ((y >= (obj_lava_water.y + 16)) && (global.bg_level == "castle")))
{
    if (global.apariencia != 0)
    {
        with (instance_create(x, (y - 16), obj_smoke))
        {
            if (global.apariencia == 1)
                sprite_index = spr_SMB3_splash_lava
            else if (global.apariencia == 2)
                sprite_index = spr_splash_lava
            depth = -10
        }
    }
    with (instance_create((x + 8), y, obj_enemyparent_lava))
    {
        sprite_index = other.sprite_index
        image_speed = 0
        direct = 1
    }
    instance_destroy()
}
if (instance_exists(obj_lava_water) && ((y >= (obj_lava_water.y + 16)) && ((global.bg_level == "forest") && (global.modo_noche == 1))))
{
    if (global.apariencia != 0)
    {
        with (instance_create((x + 8), (y - 12), obj_smoke))
        {
            if (global.apariencia == 1)
                sprite_index = spr_SMB3_splash_lava_purple
            else if (global.apariencia == 2)
                sprite_index = spr_splash_lava_purple
            depth = -10
        }
    }
    with (instance_create((x + 8), y, obj_enemyparent_lava))
    {
        sprite_index = other.sprite_index
        image_speed = 0
        direct = 1
    }
    instance_destroy()
}
if ((mytopid != obj_lighting) && ((mytopid != obj_flagpole) && (instance_exists(mytopid) && instance_exists(obj_mario))))
{
    mytopid.x = x
    mytopid.y = y
    check = collision_rectangle(obj_mario.bbox_left, (obj_mario.bbox_bottom - 1), obj_mario.bbox_right, (obj_mario.bbox_bottom + 1), obj_solidtop, 0, 0)
    if (check && (check != mytopid))
        exit
    if (collision_rectangle(bbox_left, (bbox_top - 8), bbox_right, (bbox_top + 7), obj_mario, 0, 0) && ((obj_mario.y < (y - 28)) && (obj_mario.state < 2)))
    {
        if (vspeed == 0)
            obj_mario.y = ceil((bbox_top - 32))
        else
            obj_mario.y = ceil((bbox_top - (32 - vspeed)))
        if (((hspeed > 0) && (!collision_rectangle((obj_mario.bbox_right + hspeed), obj_mario.bbox_top, (obj_mario.bbox_right + hspeed), (obj_mario.bbox_bottom - 1), obj_solid, 0, 0))) || ((hspeed < 0) && (!collision_rectangle((obj_mario.bbox_left + hspeed), obj_mario.bbox_top, (obj_mario.bbox_left + hspeed), (obj_mario.bbox_bottom - 1), obj_solid, 0, 0))))
            obj_mario.x += hspeed
    }
}

