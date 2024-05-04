event_perform_object(obj_enemyparent, 3, 0)
if (object_index != obj_bowser)
{
    if (hitpoints > 1)
    {
        inv--
        if (inv < 0)
        {
            inv = 0
            hardness = 0
        }
    }
    else
        inv = 0
}

