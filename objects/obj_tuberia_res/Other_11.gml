if ((transform == 4) && (anim_mario == 0))
{
}
else
{
    with (instance_create((x - 8), (y - 8), obj_smoke))
    {
        sprite_index = spr_effect_transform
        image_speed = 0.3
    }
    global.tuberia = transform
    color = transform
    if instance_exists(obj_card_item)
    {
        with (obj_card_item)
        {
            if (obj == 453)
            {
                if (other.color == 0)
                    obj_draw = 134
                else if (other.color == 1)
                    obj_draw = 135
                else if (other.color == 2)
                    obj_draw = 136
                else if (other.color == 3)
                    obj_draw = 137
            }
        }
    }
}

