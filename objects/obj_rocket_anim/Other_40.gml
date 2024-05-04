if (can_destroy == 1)
{
    if instance_exists(obj_card_rocket)
    {
        with (obj_card_rocket)
        {
            sprite_index = spr_rocket
            image_speed = 0
            image_index = 0
            aud = 0
            ready = 0
            cont = 0
            counter_draw = 0
            counter_anim = 0
        }
    }
    obj_editormanager.expand_open = 0
    if (instance_exists(obj_creator_jugar_editar) && audio_is_paused(obj_creator_jugar_editar.music_editor))
        audio_resume_sound(obj_creator_jugar_editar.music_editor)
    instance_destroy()
}

