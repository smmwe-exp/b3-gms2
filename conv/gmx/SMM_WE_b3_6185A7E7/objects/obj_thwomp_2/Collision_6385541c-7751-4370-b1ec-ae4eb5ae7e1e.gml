if (collision_rectangle((bbox_left + 4), (bbox_top + 4), (bbox_right - 4), (bbox_bottom - 4), other.object_index, 0, 0) && ((ready == 1) && ((other.hardness < 99) && ((other.object_index != obj_thwomp) && ((other.object_index != obj_grinder) && ((other.object_index != obj_banzaibill) && ((other.object_index != obj_podoboo) && ((other.object_index != obj_boo) && ((other.object_index != obj_cannonball) && ((other.object_index != obj_cannonball_red) && (y < other.y)))))))))))
{
    with (other.id)
        event_user(0)
}

