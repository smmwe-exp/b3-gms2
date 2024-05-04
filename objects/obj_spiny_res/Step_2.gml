if (obj_levelmanager.editor == 1)
{
    if (wings == 1)
    {
        sprite_index = spr_spiny_wings_res
        image_index = global.apariencia
        image_speed = 0
    }
    else if (global.apariencia == 0)
        sprite_index = spr_SMB_spiny_res
    else if (global.apariencia == 1)
        sprite_index = spr_SMB3_spiny_res
    else if (global.apariencia == 2)
        sprite_index = spr_SMW_spiny_res
}
if ((place_meeting(x, (y - 16), obj_ground) || (place_meeting(x, (y - 16), obj_block_res) || (place_meeting(x, (y - 16), obj_qblock_res) || (place_meeting(x, (y - 16), obj_rock_res) || (place_meeting(x, (y - 16), obj_ice_res) || (place_meeting(x, (y - 16), obj_onoffblock_res) || (place_meeting(x, (y - 16), obj_pinchos_res) || place_meeting(x, (y - 16), obj_pblock_res)))))))) && ((!collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_ground, 0, 0)) && ((!collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_block_res, 0, 0)) && ((!collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_qblock_res, 0, 0)) && ((!collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_rock_res, 0, 0)) && ((!collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_ice_res, 0, 0)) && ((!collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_onoffblock_res, 0, 0)) && ((!collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_pinchos_res, 0, 0)) && ((!collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_pblock_res, 0, 0)) && ((wings == 0) && (paracaidas == 0)))))))))))
    inup = 1
else
    inup = 0

