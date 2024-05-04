if instance_exists(obj_card_item)
{
    with (obj_card_item)
    {
        obj_sonidos = obj
        obj_draw_sonidos = obj_draw
        bg_color_sonidos = bg_color
        disabled_sonidos = disabled
    }
    with (obj_card_item)
    {
        if (value == 0)
        {
            if (global.risas == 0)
            {
                obj = 566
                obj_draw = 19
            }
            else
            {
                obj = 567
                obj_draw = 21
            }
            bg_color = 2
        }
        else if (value == 1)
        {
            if (global.ahh == 0)
            {
                obj = 572
                obj_draw = 24
            }
            else if (global.ahh == 1)
            {
                obj = 573
                obj_draw = 25
            }
            else
            {
                obj = 574
                obj_draw = 26
            }
            bg_color = 2
        }
        else if (value == 2)
        {
            if (global.serpentina == 0)
            {
                obj = 580
                obj_draw = 20
            }
            else
            {
                obj = 581
                obj_draw = 22
            }
            bg_color = 2
        }
        else if (value == 3)
        {
            obj = 583
            obj_draw = 12
            bg_color = 1
        }
        else if (value == 4)
        {
            if (global.auh == 0)
            {
                obj = 575
                obj_draw = 14
            }
            else
            {
                obj = 576
                obj_draw = 10
            }
            bg_color = 1
        }
        else if (value == 5)
        {
            if (global.cerdito == 0)
            {
                obj = 578
                obj_draw = 15
            }
            else
            {
                obj = 582
                obj_draw = 11
            }
            bg_color = 1
        }
        else if (value == 6)
        {
            if (global.bombilla == 0)
            {
                obj = 569
                obj_draw = 5
            }
            else if (global.bombilla == 1)
            {
                obj = 570
                obj_draw = 2
            }
            else
            {
                obj = 571
                obj_draw = 0
            }
            bg_color = 0
        }
        else if (value == 7)
        {
            obj = 568
            obj_draw = 4
            bg_color = 0
        }
        else if (value == 8)
        {
            if (global.fuegos_artificiales == 0)
            {
                obj = 584
                obj_draw = 34
            }
            else if (global.fuegos_artificiales == 1)
            {
                obj = 585
                obj_draw = 27
            }
            else if (global.fuegos_artificiales == 2)
            {
                obj = 586
                obj_draw = 30
            }
            else
            {
                obj = 587
                obj_draw = 28
            }
            bg_color = 3
        }
        else if (value == 9)
        {
            obj = 588
            obj_draw = 38
            bg_color = 4
            disabled = 1
        }
        else if (value == 10)
        {
            obj = 589
            obj_draw = 46
            bg_color = 4
            disabled = 1
        }
        else if (value == 11)
        {
            obj = 579
            obj_draw = 44
            bg_color = 4
        }
    }
}

