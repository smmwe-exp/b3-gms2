if instance_exists(obj_editormanager)
    visible = obj_editormanager.visible
else
    visible = 0
x = ((__view_get( e__VW.XView, 0 ) + 29) - obj_cursor.anim_left)
y = (__view_get( e__VW.YView, 0 ) + 65)
if (effect_hover == 1)
{
    if ((global.bg_level == "forest") && (global.modo_noche == 1))
    {
        sprite_index = spr_card_bout_purple_anim
        image_speed = 0.15
    }
    else if (global.bg_level == "forest")
    {
        sprite_index = spr_card_bout_water_anim
        image_speed = 0.15
    }
    else if (global.bg_level == "castle")
    {
        sprite_index = spr_card_bout_lava_anim
        image_speed = 0.15
    }
    else
    {
        sprite_index = spr_card_bout
        image_speed = 0
        image_index = 3
    }
}
else
{
    sprite_index = spr_card_bout
    image_speed = 0
    if ((global.bg_level == "forest") && (global.modo_noche == 1))
        image_index = 1
    else if (global.bg_level == "forest")
        image_index = 0
    else if (global.bg_level == "castle")
        image_index = 2
    else
        image_index = 3
}

