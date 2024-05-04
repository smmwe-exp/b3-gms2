if (place_meeting(x, (y + 16), obj_ground) || (place_meeting(x, (y + 16), obj_block_res) || (place_meeting(x, (y + 16), obj_qblock_res) || (place_meeting(x, (y + 16), obj_rock_res) || (place_meeting(x, (y + 16), obj_ice_res) || (place_meeting(x, (y + 16), obj_onoffplatform_res) || (place_meeting(x, (y + 16), obj_onoffblock_res) || (place_meeting(x, (y + 16), obj_pinchos_res) || (place_meeting(x, (y + 16), obj_qblock_res) || (place_meeting(x, (y + 16), obj_block_res) || (place_meeting(x, (y + 16), obj_pblock_res) || (place_meeting(x, (y + 16), obj_tuberia_res) || (place_meeting(x, (y + 16), obj_rock_res) || (place_meeting(x, (y + 16), obj_ice_res) || (place_meeting(x, (y + 16), obj_icecoin_res) || (place_meeting(x, (y + 16), obj_bullebill_base_res) || (place_meeting(x, (y + 16), obj_muncher_res) || (place_meeting(x, (y + 16), obj_nube_res) || (place_meeting(x, (y + 16), obj_donut_res) || (place_meeting(x, (y + 16), obj_thwomp_res) || (place_meeting(x, (y + 16), obj_estalactita_res) || (place_meeting(x, (y + 16), obj_estalactita2_res) || place_meeting(x, (y + 16), obj_spring_land_res)))))))))))))))))))))))
{
    u = 0
    d = 1
    l = 0
    r = 0
    if (direct > 4)
        direct = 2
}
else if (place_meeting(x, (y - 16), obj_ground) || (place_meeting(x, (y - 16), obj_block_res) || (place_meeting(x, (y - 16), obj_qblock_res) || (place_meeting(x, (y - 16), obj_rock_res) || (place_meeting(x, (y - 16), obj_ice_res) || (place_meeting(x, (y - 16), obj_onoffblock_res) || (place_meeting(x, (y - 16), obj_onoffplatform_res) || (place_meeting(x, (y - 16), obj_pinchos_res) || (place_meeting(x, (y - 16), obj_qblock_res) || (place_meeting(x, (y - 16), obj_block_res) || (place_meeting(x, (y - 16), obj_pblock_res) || (place_meeting(x, (y - 16), obj_tuberia_res) || (place_meeting(x, (y - 16), obj_rock_res) || (place_meeting(x, (y - 16), obj_ice_res) || place_meeting(x, (y - 16), obj_icecoin_res)))))))))))))))
{
    u = 1
    d = 0
    l = 0
    r = 0
    if ((direct != 0) && ((direct != 4) && ((direct != 5) && ((direct != 6) && (direct != 7)))))
        direct = 6
}
else if (place_meeting((x - 16), y, obj_ground) || (place_meeting((x - 16), y, obj_block_res) || (place_meeting((x - 16), y, obj_qblock_res) || (place_meeting((x - 16), y, obj_rock_res) || (place_meeting((x - 16), y, obj_ice_res) || (place_meeting((x - 16), y, obj_onoffblock_res) || (place_meeting((x - 16), y, obj_onoffplatform_res) || (place_meeting((x - 16), y, obj_pinchos_res) || (place_meeting((x - 16), y, obj_qblock_res) || (place_meeting((x - 16), y, obj_block_res) || (place_meeting((x - 16), y, obj_pblock_res) || (place_meeting((x - 16), y, obj_tuberia_res) || (place_meeting((x - 16), y, obj_rock_res) || (place_meeting((x - 16), y, obj_ice_res) || place_meeting((x - 16), y, obj_icecoin_res)))))))))))))))
{
    u = 0
    d = 0
    l = 1
    r = 0
    if ((direct != 0) && ((direct != 1) && ((direct != 2) && ((direct != 6) && (direct != 7)))))
        direct = 0
}
else if (place_meeting((x + 16), y, obj_ground) || (place_meeting((x + 16), y, obj_block_res) || (place_meeting((x + 16), y, obj_qblock_res) || (place_meeting((x + 16), y, obj_rock_res) || (place_meeting((x + 16), y, obj_ice_res) || (place_meeting((x + 16), y, obj_onoffblock_res) || (place_meeting((x + 16), y, obj_onoffplatform_res) || (place_meeting((x + 16), y, obj_pinchos_res) || (place_meeting((x + 16), y, obj_qblock_res) || (place_meeting((x + 16), y, obj_block_res) || (place_meeting((x + 16), y, obj_pblock_res) || (place_meeting((x + 16), y, obj_tuberia_res) || (place_meeting((x + 16), y, obj_rock_res) || (place_meeting((x + 16), y, obj_ice_res) || place_meeting((x + 16), y, obj_icecoin_res)))))))))))))))
{
    u = 0
    d = 0
    l = 0
    r = 1
    if ((direct != 2) && ((direct != 3) && ((direct != 4) && ((direct != 5) && (direct != 6)))))
        direct = 4
}
else
{
    u = 0
    d = 1
    l = 0
    r = 0
    if (direct > 4)
        direct = 2
}

