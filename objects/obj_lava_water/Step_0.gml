var check, check_pinchos, check_solid, check_oneway, check_cannon, check_bullet, check_muncher, check_pinchos2;
x = __view_get( e__VW.XView, 0 )
if instance_exists(obj_water_move)
    y = (obj_water_move.y + 12)
if (instance_exists(obj_card_bout) && (obj_levelmanager.editor == 1))
{
    pos_y = obj_card_bout.pos_y
    pos_y_limit = obj_card_bout.pos_y_limit
}
if (global.bg_level == "castle")
    img_sprite = 2798
else if ((global.bg_level == "forest") && (global.modo_noche == 1))
    img_sprite = 2799
else if (global.bg_level == "forest")
    img_sprite = 2800
img_index = global.apariencia
if (obj_levelmanager.editor == 0)
    depth = -13
else
    depth = -7
event_user(0)
if instance_exists(obj_levelmanager)
{
    if (((obj_levelmanager.editor == 1) && ((global.bg_level == "forest") && (global.modo_noche == 1))) || ((obj_levelmanager.editor == 1) && (global.bg_level == "castle")))
    {
        image_speed = 0
        image_index = 0
        image_alpha = 0.4
        up_down = 0
        not_move = 0
        bajar = 0
        b_bajar = 0
    }
    else if ((obj_levelmanager.editor == 1) && (global.bg_level == "forest"))
    {
        image_speed = 0
        image_index = 0
        image_alpha = 1
        up_down = 0
        not_move = 0
        bajar = 0
        b_bajar = 0
    }
    else
    {
        image_speed = 0.1
        image_alpha = 1
    }
}
if instance_exists(obj_deadmario)
    not_move = 1
if (instance_exists(obj_player_goal_smb1) || (instance_exists(obj_player_goal_smb3) || (instance_exists(obj_player_goal_smw) || instance_exists(obj_player_goal_smw_castle))))
    bajar = 1
if ((mytopid != obj_lighting) && (instance_exists(mytopid) && instance_exists(obj_mario)))
{
    mytopid.x = __view_get( e__VW.XView, 0 )
    mytopid.y = y
    if instance_exists(obj_kuribo_drybones)
    {
        check = collision_rectangle(obj_mario.bbox_left, (obj_mario.bbox_bottom - 1), obj_mario.bbox_right, (obj_mario.bbox_bottom + 1), obj_solidtop, 0, 0)
        check_pinchos = collision_rectangle(obj_mario.bbox_left, (obj_mario.bbox_bottom - 1), obj_mario.bbox_right, (obj_mario.bbox_bottom + 1), obj_pinchos, 0, 0)
        check_solid = collision_rectangle(obj_mario.bbox_left, (obj_mario.bbox_top - 2), obj_mario.bbox_right, obj_mario.bbox_top, obj_solid, 1, 0)
        check_oneway = collision_rectangle(obj_mario.bbox_left, (obj_mario.bbox_top - 2), obj_mario.bbox_right, obj_mario.bbox_top, obj_onewaygate_bottom, 1, 0)
        check_cannon = collision_rectangle(obj_mario.bbox_left, (obj_mario.bbox_top - 2), obj_mario.bbox_right, obj_mario.bbox_top, obj_cannon, 1, 0)
        check_bullet = collision_rectangle(obj_mario.bbox_left, (obj_mario.bbox_top - 2), obj_mario.bbox_right, obj_mario.bbox_top, obj_bullebill_base, 1, 0)
        check_muncher = collision_rectangle(obj_mario.bbox_left, (obj_mario.bbox_top - 2), obj_mario.bbox_right, obj_mario.bbox_top, obj_muncher, 1, 0)
        check_pinchos2 = collision_rectangle(obj_mario.bbox_left, (obj_mario.bbox_top - 2), obj_mario.bbox_right, obj_mario.bbox_top, obj_pinchos, 1, 0)
        if (((check || check_pinchos) && (vspeed > 0)) || (((check || check_pinchos) && ((vspeed < 0) && (y > (obj_mario.y + 32)))) || ((check_solid || (check_oneway || (check_cannon || (check_bullet || (check_muncher || check_pinchos2))))) && (vspeed < 0))))
        {
            obj_mario.inclown = 0
            exit
        }
        if (collision_rectangle(bbox_left, (bbox_top - 8), bbox_right, (bbox_top + 7), obj_mario, 0, 0) && ((obj_mario.y < (y - 28)) && (obj_mario.state < 2)))
        {
            if instance_exists(obj_clown)
            {
                with (obj_clown)
                    inmario = 0
            }
            with (obj_kuribo_drybones)
                gran_golpe = 0
            obj_mario.inclown = 1
            if (vspeed == 0)
                obj_mario.y = ceil((bbox_top - 32))
            else
                obj_mario.y = ceil((bbox_top - (32 - vspeed)))
        }
        else
            obj_mario.inclown = 0
    }
}

