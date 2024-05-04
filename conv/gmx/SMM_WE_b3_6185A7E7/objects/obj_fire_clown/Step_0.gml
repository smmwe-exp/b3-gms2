if (place_meeting(x, y, obj_solid) || (place_meeting(x, y, obj_pinchos) || (place_meeting(x, y, obj_cannon) || place_meeting(x, y, obj_bullebill_base))))
    event_user(0)
if ((place_meeting(x, y, obj_onewaygate_right) && (hspeed < 0)) || (place_meeting(x, y, obj_onewaygate_left) && (hspeed > 0)))
    event_user(0)
gravity = 0
if outside_view()
    instance_destroy()

