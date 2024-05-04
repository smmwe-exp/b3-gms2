if ((!instance_exists(obj_mario)) || (obj_mario.x < x))
    direct = -1
else
    direct = 1
speed = (0.4 * direct)

