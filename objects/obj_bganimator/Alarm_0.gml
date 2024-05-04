if instance_exists(obj_levelmanager)
{
    if (obj_levelmanager.editor == 0)
    {
        if (((global.bg_level == "sky") || (global.bg_level == "airship")) && (global.apariencia != 0))
        {
            __background_set( e__BG.Index, 0, anibg[numb] )
            numb++
            if (numb == array_length_1d(anibg))
                numb = 0
            if (cont >= 2)
            {
                alarm[0] = choose(80, 80, 60, 90, 60)
                cont = 0
            }
            else
            {
                alarm[0] = 10
                cont++
            }
        }
        else
        {
            __background_set( e__BG.Index, 0, anibg[numb] )
            numb++
            if (numb == array_length_1d(anibg))
                numb = 0
            alarm[0] = 10
        }
    }
    else
    {
        __background_set( e__BG.Index, 0, anibg[0] )
        alarm[0] = 10
    }
}

