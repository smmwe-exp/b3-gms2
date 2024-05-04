if (obj_levelmanager.editor == 1)
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
if ((place_meeting(x, (y - 16), obj_ground) || (place_meeting(x, (y - 16), obj_block_res) || (place_meeting(x, (y - 16), obj_qblock_res) || (place_meeting(x, (y - 16), obj_rock_res) || (place_meeting(x, (y - 16), obj_ice_res) || (place_meeting(x, (y - 16), obj_onoffblock_res) || (place_meeting(x, (y - 16), obj_onoffplatform_res) || (place_meeting(x, (y - 16), obj_pinchos_res) || place_meeting(x, (y - 16), obj_pblock_res))))))))) && ((!collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_ground, 0, 0)) && ((!collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_block_res, 0, 0)) && ((!collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_qblock_res, 0, 0)) && ((!collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_rock_res, 0, 0)) && ((!collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_ice_res, 0, 0)) && ((!collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_onoffblock_res, 0, 0)) && ((!collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_onoffplatform_res, 0, 0)) && ((!collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_pinchos_res, 0, 0)) && (!collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_pblock_res, 0, 0)))))))))))
    inup = 1
else
    inup = 0

