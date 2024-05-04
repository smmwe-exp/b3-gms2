var solid_dead, solidtop_dead, pinchos_dead, solid_right, solid_left, bullet_right, bullet_left, muncher_right, muncher_left, pinchos_right, pinchos_left, cannon_right, cannon_left, oneway_right, oneway_left;
solid_dead = collision_rectangle(x, (bbox_top + 2), x, (bbox_top + 2), obj_solid, 1, 0)
solidtop_dead = collision_rectangle((bbox_left + 3), bbox_bottom, (bbox_right - 3), (bbox_bottom + 1), obj_solidtop, 0, 0)
pinchos_dead = collision_rectangle((bbox_left + 3), bbox_bottom, (bbox_right - 3), (bbox_bottom + 1), obj_pinchos, 0, 0)
solid_right = collision_rectangle((x + 6), (bbox_top + 2), (x + 6), (y + 30), obj_solid, 1, 0)
solid_left = collision_rectangle((x - 6), (bbox_top + 2), (x - 6), (y + 30), obj_solid, 1, 0)
bullet_right = collision_rectangle((x + 6), (bbox_top + 2), (x + 6), (y + 30), obj_bullebill_base, 1, 0)
bullet_left = collision_rectangle((x - 6), (bbox_top + 2), (x - 6), (y + 30), obj_bullebill_base, 1, 0)
muncher_right = collision_rectangle((x + 6), (bbox_top + 2), (x + 6), (y + 30), obj_muncher, 1, 0)
muncher_left = collision_rectangle((x - 6), (bbox_top + 2), (x - 6), (y + 30), obj_muncher, 1, 0)
pinchos_right = collision_rectangle((x + 6), (bbox_top + 2), (x + 6), (y + 30), obj_pinchos, 1, 0)
pinchos_left = collision_rectangle((x - 6), (bbox_top + 2), (x - 6), (y + 30), obj_pinchos, 1, 0)
cannon_right = collision_rectangle((x + 6), (bbox_top + 2), (x + 6), (y + 30), obj_cannon, 1, 0)
cannon_left = collision_rectangle((x - 6), (bbox_top + 2), (x - 6), (y + 30), obj_cannon, 1, 0)
oneway_right = collision_rectangle((x + 5), (bbox_top + 2), (x + 6), (y + 30), obj_onewaygate_left, 1, 0)
oneway_left = collision_rectangle((x - 5), (bbox_top + 2), (x - 6), (y + 30), obj_onewaygate_right, 1, 0)
if (solid_dead && ((solid_dead.vspeed > 0) && ((solid_dead.y < (y + 16)) && ((vspeed == 0) && ((gravity == 0) && (solidtop_dead || pinchos_dead))))))
{
    instance_create(x, y, obj_deadmario)
    instance_destroy()
}
else if ((solid_right || (bullet_right || (muncher_right || (pinchos_right || (cannon_right || oneway_right))))) && ((solid_left && (solid_left.hspeed > 0)) || ((muncher_left && (muncher_left.hspeed > 0)) || (cannon_left && (cannon_left.hspeed > 0)))))
{
    instance_create(x, y, obj_deadmario)
    instance_destroy()
}
else if ((solid_left || (bullet_left || (muncher_left || (pinchos_left || (cannon_left || oneway_left))))) && ((solid_right && (solid_right.hspeed < 0)) || ((muncher_right && (muncher_right.hspeed < 0)) || (cannon_right && (cannon_right.hspeed < 0)))))
{
    instance_create(x, y, obj_deadmario)
    instance_destroy()
}

