if (obj_levelmanager.editor == 1)
{
    if (global.apariencia == 0)
    {
        if ((global.bg_level == "castle") || ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1))))
        {
            if (wings == 1)
            {
                sprite_index = spr_SMB_buzzy_wings_res
                image_index = 1
            }
            else
                sprite_index = spr_SMB_buzzybeetle_night_res
        }
        else if (wings == 1)
        {
            sprite_index = spr_SMB_buzzy_wings_res
            image_index = 0
        }
        else
            sprite_index = spr_SMB_buzzybeetle_res
    }
    else if (global.apariencia == 1)
    {
        if ((global.bg_level == "castle") || ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1))))
        {
            if (wings == 1)
            {
                sprite_index = spr_SMB3_buzzy_wings_res
                image_index = 1
            }
            else
                sprite_index = spr_SMB3_buzzybeetle_night_res
        }
        else if (wings == 1)
        {
            sprite_index = spr_SMB3_buzzy_wings_res
            image_index = 0
        }
        else
            sprite_index = spr_SMB3_buzzybeetle_res
    }
    else if (global.apariencia == 2)
    {
        if (wings == 1)
            sprite_index = spr_buzzy_wings_res
        else
            sprite_index = spr_buzzybeetle_res
    }
    else if (global.apariencia == 3)
        sprite_index = spr_NSMBU_buzzybeetle_res
}
if ((place_meeting(x, (y - 16), obj_ground) || (place_meeting(x, (y - 16), obj_block_res) || (place_meeting(x, (y - 16), obj_qblock_res) || (place_meeting(x, (y - 16), obj_rock_res) || (place_meeting(x, (y - 16), obj_ice_res) || (place_meeting(x, (y - 16), obj_onoffblock_res) || (place_meeting(x, (y - 16), obj_onoffplatform_res) || (place_meeting(x, (y - 16), obj_pinchos_res) || place_meeting(x, (y - 16), obj_pblock_res))))))))) && ((!collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_ground, 0, 0)) && ((!collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_block_res, 0, 0)) && ((!collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_qblock_res, 0, 0)) && ((!collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_rock_res, 0, 0)) && ((!collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_ice_res, 0, 0)) && ((!collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_onoffblock_res, 0, 0)) && ((!collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_onoffplatform_res, 0, 0)) && ((!collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_pinchos_res, 0, 0)) && ((!collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_pblock_res, 0, 0)) && ((wings == 0) && (paracaidas == 0))))))))))))
    inup = 1
else
    inup = 0

