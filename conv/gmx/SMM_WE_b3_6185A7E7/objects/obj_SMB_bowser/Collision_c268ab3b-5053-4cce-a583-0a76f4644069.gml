cooldown = 4
if (hits > 1)
{
    hits--
    if (hits < 3)
        alarm[5] = 4
}
else
    event_inherited()
with (other.id)
    event_user(0)

