var col_enemy;
col_enemy = collision_rectangle(bbox_left, (bbox_top - 2), bbox_right, bbox_top, obj_enemyparent, 1, 0)
if (col_enemy && (col_enemy.hardness < 99))
{
    with (col_enemy)
    {
        audio_play_sound(scr_snd_kick(), 0, false)
        with (instance_create(x, y, obj_score))
            event_user(0)
        if ((object_index == obj_koopa) || ((object_index == obj_koopa_red) || ((object_index == obj_buzzybeetle) || ((object_index == obj_spiny) || ((object_index == obj_galoomba) || ((object_index == obj_snow_ball_held) || (object_index == obj_shell_held)))))))
            event_user(5)
        else if ((object_index == obj_galoomba) && (global.apariencia == 2))
        {
            with (instance_create((x - 8), y, obj_galoomba_hold))
            {
                direct = other.direct
                vspeed = -2.2
            }
        }
        else if ((object_index == obj_galoomba2) && (global.apariencia == 2))
        {
            with (instance_create((x - 8), y, obj_galoomba_hold2))
            {
                direct = other.direct
                vspeed = -2.2
            }
        }
        else if ((object_index == obj_bobomb) || (object_index == obj_bobomb_ready))
        {
            with (instance_create((x - 8), y, obj_bobomb_hold))
            {
                direct = other.direct
                vspeed = -2.2
            }
        }
        else
            event_user(0)
    }
}
if (global.apariencia == 0)
{
    if (sprite_index == spr_SMB_empty_block)
    {
        tipo = spr_SMB_shard_empty
        subimagen = image_index
    }
    else if (sprite_index == spr_SMB_qblock)
    {
        tipo = spr_SMB_shard
        subimagen = image_index
    }
    else if (sprite_index == spr_SMB_block)
    {
        tipo = spr_SMB_shard_item
        subimagen = 0
    }
    else if (sprite_index == spr_SMB_block_night)
    {
        tipo = spr_SMB_shard_item
        subimagen = 1
    }
    else if (sprite_index == spr_SMB_block_dark)
    {
        tipo = spr_SMB_shard_item
        subimagen = 2
    }
    else if (sprite_index == spr_SMB_block_snow)
    {
        tipo = spr_SMB_shard_item
        subimagen = 3
    }
    else if (sprite_index == spr_SMB_block_ice)
    {
        tipo = spr_SMB_shard_item
        subimagen = 4
    }
}
else if (global.apariencia == 1)
{
    if (sprite_index == spr_SMB3_empty_block)
    {
        tipo = spr_SMB3_shard
        subimagen = image_index
    }
    else if ((sprite_index == spr_SMB3_qblock) || (sprite_index == spr_SMB3_block))
    {
        tipo = spr_SMB3_shard
        subimagen = 0
    }
    else if ((sprite_index == spr_SMB3_qblock_night) || (sprite_index == spr_SMB3_block_night))
    {
        tipo = spr_SMB3_shard
        subimagen = 1
    }
    else if ((sprite_index == spr_SMB3_qblock_dark) || (sprite_index == spr_SMB3_block_dark))
    {
        tipo = spr_SMB3_shard
        subimagen = 2
    }
    else if ((sprite_index == spr_SMB3_qblock_ice) || (sprite_index == spr_SMB3_blocks_ice))
    {
        tipo = spr_SMB3_shard
        subimagen = 3
    }
}
else if (global.apariencia == 2)
{
    subimagen = 0
    if (sprite_index == spr_qblock_empty)
        tipo = spr_shard_th
    else
        tipo = spr_shard
}
else if (global.apariencia == 3)
{
    subimagen = 0
    if (sprite_index == spr_NSMBU_qblock_empty)
        tipo = spr_shard_th
    else
        tipo = spr_shard
}
else if (global.apariencia == 4)
{
    if ((sprite_index == spr_SMB2_question_block) || (sprite_index == spr_SMB2_question_block_night))
        tipo = spr_SMB2_shard_qblock
    else
        tipo = spr_SMB2_shard
    if ((global.bg_level == "castle") || ((global.bg_level == "underground") || ((global.bg_level == "ghost") || (global.modo_noche == 1))))
        subimagen = 1
    else
        subimagen = 0
}
audio_play_sound(scr_snd_break(), 0, false)
with (instance_create((x + 4), (y + 4), obj_shard))
{
    motion_set(45, 5)
    sprite_index = other.tipo
    image_index = other.subimagen
    dir = 1
}
with (instance_create((x + 4), (y + 12), obj_shard))
{
    motion_set(60, 5)
    sprite_index = other.tipo
    image_index = other.subimagen
    dir = 1
}
with (instance_create((x + 12), (y + 12), obj_shard))
{
    motion_set(120, 5)
    sprite_index = other.tipo
    image_index = other.subimagen
    dir = 0
}
with (instance_create((x + 12), (y + 4), obj_shard))
{
    motion_set(135, 5)
    sprite_index = other.tipo
    image_index = other.subimagen
    dir = 0
}
instance_destroy()

