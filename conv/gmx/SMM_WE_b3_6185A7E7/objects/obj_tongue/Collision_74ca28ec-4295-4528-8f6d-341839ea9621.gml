if ((hunger == 0) && ((ready == 0) && ((other.object_index != obj_thwomp) && ((other.object_index != obj_grinder) && (other.object_index != obj_banzaibill)))))
{
    if (other.edible == 2)
    {
        ready = 1
        alarm[0] = 8
    }
    else
    {
        hunger = 1
        ready = 1
        alarm[0] = 8
        if (!hunger)
        {
            hunger = 1
            ready = 1
            alarm[0] = 8
            obj_yoshi2.mouthholder = 221
            obj_yoshi2.mouthsprite = other.sprite_index
            foodsprite = other.sprite_index
            foodoffset = 0
            with (other.id)
                instance_destroy()
        }
        if (((other.object_index == obj_cheepcheep) || (other.object_index == obj_cheepcheep2)) && ((other.lava == 1) && (global.bg_level == "castle")))
            obj_yoshi2.mouthholder = 219
        else if (((other.object_index == obj_cheepcheep) || (other.object_index == obj_cheepcheep2)) && ((other.lava == 1) && (global.bg_level == "forest")))
            obj_yoshi2.mouthholder = 220
        else if (other.object_index == obj_drybones)
        {
            obj_yoshi2.mouthholder = 246
            obj_yoshi2.mouthsprite = other.sprite_index
        }
        else if (other.object_index == obj_shell_held)
        {
            obj_yoshi2.mouthholder = 267
            obj_yoshi2.mouthsprite = other.sprite_index
        }
        else if (other.object_index == obj_koopa)
        {
            obj_yoshi2.mouthholder = 267
            obj_yoshi2.mouthsprite = 1757
        }
        else if (other.object_index == obj_koopa_red)
        {
            obj_yoshi2.mouthholder = 267
            obj_yoshi2.mouthsprite = 1764
        }
        else if (other.object_index == obj_spiny)
        {
            obj_yoshi2.mouthholder = 267
            obj_yoshi2.mouthsprite = 1791
        }
        else if (other.object_index == obj_buzzybeetle)
        {
            obj_yoshi2.mouthholder = 267
            obj_yoshi2.mouthsprite = 1783
        }
        else if (other.object_index == obj_snow_ball_held)
        {
            obj_yoshi2.mouthholder = 48
            obj_yoshi2.mouthsprite = other.sprite_index
        }
        else if (other.object_index == obj_podoboo)
        {
            obj_yoshi2.mouthholder = 64
            obj_yoshi2.mouthsprite = other.sprite_index
        }
        if (other.object_index == obj_snow_ball_held)
            foodsprite = 1818
        else
            foodsprite = other.sprite_index
        direct_sprite = other.direct
        foodindex = other.image_index
        with (other.id)
            other.foodoffset = (((bbox_left + bbox_right) / 2) - x)
        with (other.id)
            instance_destroy()
    }
}

