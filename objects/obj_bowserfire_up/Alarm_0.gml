if (direct == -1)
{
    instance_create(pos, (__view_get( e__VW.YView, 0 ) - 16), obj_bowser_fire_down)
    instance_create((pos + 16), (__view_get( e__VW.YView, 0 ) - 44), obj_bowser_fire_down)
    instance_create((pos + 32), (__view_get( e__VW.YView, 0 ) - 72), obj_bowser_fire_down)
    instance_create((pos + 48), (__view_get( e__VW.YView, 0 ) - 100), obj_bowser_fire_down)
    instance_create((pos + 64), (__view_get( e__VW.YView, 0 ) - 128), obj_bowser_fire_down)
}
else
{
    instance_create(pos, (__view_get( e__VW.YView, 0 ) - 16), obj_bowser_fire_down)
    instance_create((pos - 16), (__view_get( e__VW.YView, 0 ) - 44), obj_bowser_fire_down)
    instance_create((pos - 32), (__view_get( e__VW.YView, 0 ) - 72), obj_bowser_fire_down)
    instance_create((pos - 48), (__view_get( e__VW.YView, 0 ) - 100), obj_bowser_fire_down)
    instance_create((pos - 64), (__view_get( e__VW.YView, 0 ) - 128), obj_bowser_fire_down)
}
instance_destroy()

