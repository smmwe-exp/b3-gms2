image_speed = 0
image_index = 0
x_prev = x
y_prev = y
anim_right = 0
cont_panel_right = 0
anim_left = 0
cont_panel_left = 0
anim_top = 0
cont_panel_top = 0
anim_creator = 0
cont_panel_creator = 0
v_ground = 1.25
v_coin = 1.25
v_goomba = 1.25
v_koopa = 1.25
v_pipe = 1.25
v_spike = 1.25
v_m_platform = 1.25
v_block = 1.25
v_itemblock = 1.25
v_hardblock = 1.25
v_hiddenblock = 1.25
v_donutblock = 1.25
v_noteblock = 1.25
v_cloudblock = 1.25
v_iceblock = 1.25
v_semiplat = 1.25
v_puente = 1.25
v_more = 1.25
item_add = 0
move = 0
object_move = 0
cont = 0
cont_add = 0
obj_depth = 0
item_add_temp = 0
if (room == rm_editor)
{
    mask_cursor = 0
    if (!instance_exists(obj_cursor_mask))
        mask_cursor = instance_create(x, y, obj_cursor_mask)
}

