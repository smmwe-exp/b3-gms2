if (!audio_is_playing(levelmusic))
{
    if ((musicdisabled == 0) && ((switchon == 0) && ((sound_effect == 0) && ((editor == 0) && ((!instance_exists(obj_player_goal_smw)) && ((!instance_exists(obj_player_goal_smb3)) && ((!instance_exists(obj_player_goal_smb1)) && (!instance_exists(obj_deadmario)))))))))
        audio_play_sound(levelmusic, 1, true)
}

