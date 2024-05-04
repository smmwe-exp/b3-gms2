if (new_texto == "")
    image_index = 0
else
    image_index = 1
if (obj_persistent.modo_android == 0)
{
    if (active == 1)
    {
        if ((string_width(string_hash_to_newline(new_texto)) < (TX - 48)) || keyboard_check(vk_backspace))
            new_texto = keyboard_string
        else
            keyboard_string = new_texto
    }
}

