var file;
keyboard_key_release(vk_control)
keyboard_key_release(global.lanzar_agarrar)
file = file_text_open_write("Settings.dat")
file_text_write_string(file, string(fullscreen))
file_text_writeln(file)
file_text_write_string(file, string(filter))
file_text_writeln(file)
file_text_write_string(file, string(vsync))
file_text_writeln(file)
file_text_write_string(file, string(real(global.lanzar_agarrar)))
file_text_writeln(file)
file_text_write_string(file, string(real(global.saltar)))
file_text_writeln(file)
file_text_write_string(file, string(real(global.saltar_spin)))
file_text_writeln(file)
file_text_write_string(file, string(real(global.pause)))
file_text_writeln(file)
file_text_write_string(file, string(real(global.jugador)))
file_text_writeln(file)
file_text_write_string(file, string(real(global.arriba)))
file_text_writeln(file)
file_text_write_string(file, string(real(global.abajo)))
file_text_writeln(file)
file_text_write_string(file, string(real(global.izquierda)))
file_text_writeln(file)
file_text_write_string(file, string(real(global.derecha)))
file_text_writeln(file)
file_text_write_string(file, string(global.last_level))
file_text_writeln(file)
file_text_write_string(file, string(global.name_user))
file_text_writeln(file)
file_text_write_string(file, string(global.idioma))
file_text_writeln(file)
file_text_write_string(file, string(real(global.w_scale)))
file_text_close(file)

