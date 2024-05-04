audio_play_sound(snd_tread_boss, 0, false)
with (instance_create((round((bbox_left + bbox_right)) / 2), ((round((bbox_top + bbox_bottom)) / 2) - 8), obj_smoke))
    sprite_index = spr_spinthump
firehitpoints--
with (other.id)
    event_user(0)

