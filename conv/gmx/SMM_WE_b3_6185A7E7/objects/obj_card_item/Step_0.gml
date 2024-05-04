if (instance_exists(obj_card_block_sounds) && (obj_card_block_sounds.modo_sonidos == 1))
{
    sprite_card = 2412
    s_card_top = 2414
}
else
{
    if (global.apariencia == 0)
        sprite_card = 2407
    else if (global.apariencia == 1)
        sprite_card = 2408
    else if (global.apariencia == 2)
        sprite_card = 2409
    else if (global.apariencia == 3)
        sprite_card = 2410
    else if (global.apariencia == 4)
        sprite_card = 2411
    s_card_top = 2403
}
if (obj_levelmanager.editor_sonidos == 0)
{
    if (((obj == 441) && (instance_number(obj_pink_coin_res) > 4)) || (((obj == 454) && (instance_number(obj_angrysun_res) > 0)) || (((obj == 509) && (instance_number(obj_checkpoint_res) > 0)) || (((obj == 510) && (instance_number(obj_door_res) > 3)) || (((obj == 512) && (instance_number(obj_door_switch_res) > 3)) || ((obj == 514) && (instance_number(obj_door_lock_res) > 3)))))))
    {
        if (disabled == 0)
        {
            disabled = 1
            global.select_resource = 617
        }
        active = 0
    }
    else
        disabled = 0
}
if (active == 0)
    sprite_index = spr_card_item
else
    sprite_index = spr_card_item_selected
x = (__view_get( e__VW.XView, 0 ) + x_pos)
y = (__view_get( e__VW.YView, 0 ) - obj_cursor.anim_top)

