x = ((__view_get( e__VW.XView, 0 ) + 7) - obj_cursor.anim_left)
y = (__view_get( e__VW.YView, 0 ) + 66)
if (global.bg_level == "ground")
    image_index = 0
else if (global.bg_level == "underground")
    image_index = 1
else if (global.bg_level == "castle")
    image_index = 2
else if (global.bg_level == "underwater")
    image_index = 3
else if (global.bg_level == "ghost")
    image_index = 4
else if (global.bg_level == "airship")
    image_index = 5
else if (global.bg_level == "forest")
    image_index = 6
else if (global.bg_level == "sky")
    image_index = 7
else if (global.bg_level == "desert")
    image_index = 8
else if (global.bg_level == "snow")
    image_index = 9

