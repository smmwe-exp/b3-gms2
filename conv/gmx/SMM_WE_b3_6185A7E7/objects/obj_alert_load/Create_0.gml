myfile = ""
img_ground = 72
img_block = 64
img_rock = 17
img_pinchos = 106
img_donut = 53
img_cloud = 103
img_hidden_block = 11
img_1up = 0
img_billbanzai = 2
img_bobomb = 25
img_buzzy = 35
img_buzzy_shell = 87
img_muncher = 100
img_chomp = 141
img_bulletbill = 5
img_cannon = 155
img_pokey = 152
s_music_editor = 144
with (instance_create((__view_get( e__VW.XView, 0 ) + 198), (__view_get( e__VW.YView, 0 ) + 131), obj_noti_load_button))
    alarm[2] = 15
with (instance_create((__view_get( e__VW.XView, 0 ) + 68), (__view_get( e__VW.YView, 0 ) + 131), obj_noti_load_button))
{
    sprite_index = spr_button_notification_no
    alarm[2] = 15
}

