audio_play_sound(bgm_smwclear, 0, false)
with (obj_goalgate)
    alarm[1] = 560
if (room != rm_editor)
{
    if ((obj_persistent.modo_android == 1) && (global.controles_tactiles == 1))
    {
        with (obj_persistent)
        {
            event_user(4)
            event_user(5)
        }
    }
}
if instance_exists(obj_mario)
{
    myscore = instance_create((x - 8), y, obj_score)
    scoregoal = instance_create((obj_goalgate.x - 24), (obj_goalgate.y + 30), obj_scoregoal)
    with (myscore)
        visible = 0
    if ((obj_mario.y + 16) < (ystart + 5))
    {
        with (myscore)
            event_user(7)
        with (scoregoal)
            sprite_index = spr_1UP_goal_effect
    }
    else if ((obj_mario.y + 16) < (ystart + 41))
    {
        with (myscore)
            event_user(11)
        with (scoregoal)
            sprite_index = spr_40_goal_effect
    }
    else if ((obj_mario.y + 16) < (ystart + 65))
    {
        with (myscore)
            event_user(11)
        with (scoregoal)
            sprite_index = spr_40_goal_effect
    }
    else if ((obj_mario.y + 16) < (ystart + 89))
    {
        with (myscore)
            event_user(10)
        with (scoregoal)
            sprite_index = spr_25_goal_effect
    }
    else if ((obj_mario.y + 16) < (ystart - 113))
    {
        with (myscore)
            event_user(9)
        with (scoregoal)
            sprite_index = spr_10_goal_effect
    }
    else
    {
        with (myscore)
            event_user(8)
        with (scoregoal)
            sprite_index = spr_5_goal_effect
    }
    with (obj_mario)
    {
        with (instance_create(x, y, obj_player_goal_smw))
        {
            vspeed = other.vspeed
            direct = other.direct
            swim = other.isswim
            if instance_exists(obj_helmet_spiny)
                helmet = 2
            else if instance_exists(obj_helmet)
                helmet = 1
            sprite_index = other.sprite_index
        }
        instance_destroy()
    }
}
with (instance_create((x + 16), (y - 16), obj_smoke))
    sprite_index = spr_smokethwomp
instance_destroy()

