var nombre, clave;
nombre = obj_input_name_user.new_texto
clave = obj_input_password.new_texto
url = http_get(((("https://smmwelevels.000webhostapp.com/gamelogin.php?username=" + nombre) + "&password=") + clave))

