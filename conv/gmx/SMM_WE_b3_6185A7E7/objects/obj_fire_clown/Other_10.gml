if (direct == 1)
    instance_create((x + 12), y, obj_clown_explotion)
else
    instance_create((x - 12), y, obj_clown_explotion)
instance_destroy()

