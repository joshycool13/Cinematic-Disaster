
movement_direction_hori = 0
movement_direction_vert = 0

if keyboard_check(ord("A"))
{
	movement_direction_hori -= 1
}
if keyboard_check(ord("D"))
{
	movement_direction_hori += 1
}
if keyboard_check(ord("W"))
{
	movement_direction_vert -= 1
}
if keyboard_check(ord("S"))
{
	movement_direction_vert += 1
}

x = x + movement_direction_hori * movement_spd
y = y + movement_direction_vert * movement_spd