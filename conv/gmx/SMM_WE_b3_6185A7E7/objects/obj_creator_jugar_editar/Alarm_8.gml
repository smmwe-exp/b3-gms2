if instance_exists(obj_mario)
{
    with (obj_mario)
    {
        if ((!place_meeting(x, (y + 16), obj_solidtop)) && ((!place_meeting(x, (y + 32), obj_solidtop)) && ((!place_meeting(x, (y + 48), obj_solidtop)) && ((!place_meeting(x, (y + 64), obj_solidtop)) && ((!place_meeting(x, (y + 96), obj_solidtop)) && ((!place_meeting(x, (y + 112), obj_solidtop)) && ((!place_meeting(x, (y + 128), obj_solidtop)) && ((!place_meeting(x, (y + 16), obj_pinchos)) && ((!place_meeting(x, (y + 32), obj_pinchos)) && ((!place_meeting(x, (y + 48), obj_pinchos)) && ((!place_meeting(x, (y + 64), obj_pinchos)) && ((!place_meeting(x, (y + 96), obj_pinchos)) && ((!place_meeting(x, (y + 112), obj_pinchos)) && ((!place_meeting(x, (y + 128), obj_pinchos)) && (global.bg_level != "underwater")))))))))))))))
            instance_create((x - 8), (y + 32), obj_platform_help)
    }
}

