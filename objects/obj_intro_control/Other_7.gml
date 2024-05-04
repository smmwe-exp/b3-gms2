if (sprite_index == spr_intro1_part1)
    sprite_index = spr_intro1_part2
else if (sprite_index == spr_intro1_part2)
    sprite_index = spr_intro1_part3
else if (sprite_index == spr_intro1_part3)
    sprite_index = spr_intro1_part4
else if (sprite_index == spr_intro1_part4)
    sprite_index = spr_intro1_part5
else if (sprite_index == spr_intro1_part5)
{
    image_speed = 0
    image_index = 60
    room_goto(rm_presentacion)
}

