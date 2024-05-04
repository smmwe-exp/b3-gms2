event_inherited()
if (press == 0)
{
    if (global.apariencia == 0)
        sprite_index = spr_SMB_pswitch
    else if (global.apariencia == 1)
        sprite_index = spr_SMB3_pswitch
    else if (global.apariencia == 2)
        sprite_index = spr_pswitch
    else if (global.apariencia == 3)
        sprite_index = spr_NSMBU_pswitch
    else
        sprite_index = spr_SMB_pswitch
}
else if (global.apariencia == 0)
    sprite_index = spr_SMB_pswitch_pressed
else if (global.apariencia == 1)
    sprite_index = spr_SMB3_pswitch_pressed
else if (global.apariencia == 2)
    sprite_index = spr_pswitch_press
else if (global.apariencia == 3)
    sprite_index = spr_NSMBU_pswitch_press
else
    sprite_index = spr_SMB_pswitch_pressed
if (place_meeting(x, (y - 16), obj_solid) && ((!collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_solidtop, 0, 0)) && ((!collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_pinchos, 0, 0)) && ((!collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_block_pow_hold, 0, 0)) && (obj_levelmanager.editor == 1)))))
    inup = 1
else if (place_meeting(x, (y - 16), obj_solid) && ((collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_solidtop, 0, 0) || (collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_pinchos, 0, 0) || collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_block_pow_hold, 0, 0))) && (obj_levelmanager.editor == 1)))
    inup = 0
else if ((!place_meeting(x, (y - 16), obj_solid)) && (obj_levelmanager.editor == 1))
    inup = 0
if ((!place_meeting(x, (y - 16), obj_solid)) && (obj_levelmanager.editor == 0))
    inup = 0

