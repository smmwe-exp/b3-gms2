if (global.cursor == 2)
{
    cursor = 2422
    if (fast_clean == 1)
        i_index = 1
    else
        i_index = 0
}
else
{
    cursor = 2421
    switch global.cursor
    {
        case 0:
            i_index = 0
            break
        case 1:
            i_index = 1
            break
    }
    
}

