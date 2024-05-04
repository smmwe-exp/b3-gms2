if (cpoint == -4)
    room_goto(myroom)
else
{
    global.checkpoint = cpoint
    room_goto(global.checkpointroom)
}

