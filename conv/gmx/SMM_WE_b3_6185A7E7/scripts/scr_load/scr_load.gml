var file, i;
file = file_text_open_read(argument0)
ds_map_read(global.worldmap, file_text_read_string(file))
file_text_readln(file)
ds_map_read(global.cardgame, file_text_read_string(file))
file_text_readln(file)
global.coins = real(base64_decode(file_text_read_string(file)))
file_text_readln(file)
lives = real(base64_decode(file_text_read_string(file)))
file_text_readln(file)
score = real(base64_decode(file_text_read_string(file)))
file_text_readln(file)
global.powerup = real(base64_decode(file_text_read_string(file)))
file_text_readln(file)
global.reserveitem = real(base64_decode(file_text_read_string(file)))
file_text_readln(file)
global.palacered = real(base64_decode(file_text_read_string(file)))
file_text_readln(file)
global.palaceblue = real(base64_decode(file_text_read_string(file)))
file_text_readln(file)
global.palaceyellow = real(base64_decode(file_text_read_string(file)))
file_text_readln(file)
global.palacegreen = real(base64_decode(file_text_read_string(file)))
file_text_readln(file)
global.yoshi = real(base64_decode(file_text_read_string(file)))
file_text_readln(file)
global.ycolor = real(base64_decode(file_text_read_string(file)))
file_text_readln(file)
global.cardscore = real(base64_decode(file_text_read_string(file)))
file_text_readln(file)
for (i = 0; i < 16; i++)
{
    global.inventory[i] = real(base64_decode(file_text_read_string(file)))
    file_text_readln(file)
}
file_text_close(file)