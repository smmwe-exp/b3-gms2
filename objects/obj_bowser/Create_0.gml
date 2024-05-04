hardness = 0
stomp = -1
modo_lava = 0
fireball_1 = 0
fireball_2 = 0
fireball_3 = 0
fireball_4 = 0
fireball_5 = 0
innave = 0
direct = 1
with_music = 0
disup_cont = 0
jump = 0
big_jump = 0
aplastar = 0
aplastar2 = 0
search = 0
search2 = 0
dir_left_right = 0
sprout_key = -1
swimming = 0
parar = 0
herido = 0
inv = 0
dead_h = 0
apilar = 0
obj_apilar = ""
obj_apilar_wings = 0
apilado = 0
my_apilar = 0
hitpoints = 0
firehitpoints = 50
s_bowser_walk = 1100
s_bowser_fire = 1101
s_bowser_turning = 1102
s_bowser_search = 1103
s_bowser_attack = 1104
s_bowser_deads = 1105
alarm[10] = 1
if (global.apariencia == 1)
    alarm[5] = 360
else if (global.apariencia == 2)
{
    alarm[5] = 30
    alarm[3] = 20
    if (obj_levelmanager.editor == 0)
        alarm[7] = choose(240, 480, 180, 480)
}

