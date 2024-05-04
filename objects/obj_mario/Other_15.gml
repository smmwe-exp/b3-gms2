if (((global.powerup != -41) && ((global.powerup != -42) && (global.powerup != -43))) || (((global.powerup == -41) && (((direct == 1) && (!collision_rectangle(bbox_right, (bbox_top + 4), (bbox_right + 1), (bbox_bottom - 1), obj_solid, 1, 0))) || ((direct == -1) && (!collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 1), obj_solid, 1, 0))))) || (((global.powerup != -41) && (((direct == -1) && (keyboard_check(global.izquierda) || (!collision_rectangle(bbox_right, (bbox_top + 4), (bbox_right + 1), (bbox_bottom - 1), obj_solid, 1, 0)))) || ((direct == 1) && (keyboard_check(global.derecha) || (!collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 1), obj_solid, 1, 0)))))) || (collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_solidtop, 0, 0) || collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_slopeparent, 1, 0)))))
{
    state = 2
    jumpnow = 0
    exit
}
if (global.powerup == -41)
{
    if (keyboard_check(global.arriba) && ((!keyboard_check(global.abajo)) && (disablecontrols == 0)))
        vspeed = -1
    else if (keyboard_check(global.abajo) && ((!keyboard_check(global.arriba)) && (disablecontrols == 0)))
        vspeed = 1
    else
        vspeed = 0
}
else if (global.powerup != -43)
    vspeed = 1
if (keyboard_check_pressed(global.saltar) && (disablecontrols == 0))
{
    vspeed = -3.75
    audio_play_sound(snd_jump, 0, false)
    jumpnow = 1
    state = 2
    if (global.powerup == -41)
        direct = (-direct)
    else
    {
        audio_play_sound(snd_stomp, 0, false)
        instance_create(x, (y + 32), obj_spinthump)
    }
    hspeed = (3 * direct)
}

