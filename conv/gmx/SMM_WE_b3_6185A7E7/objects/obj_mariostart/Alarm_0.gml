visible = 1
if (lives == 0)
    instance_create((__view_get( e__VW.XView, 0 ) + 160), (__view_get( e__VW.YView, 0 ) + 85), obj_mariostart_mario)
else
    instance_create((__view_get( e__VW.XView, 0 ) + 141), (__view_get( e__VW.YView, 0 ) + 85), obj_mariostart_mario)

