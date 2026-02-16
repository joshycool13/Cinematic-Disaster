
movement_direction_hori = 0
movement_direction_vert = 0

if keyboard_check(vk_left)
{
	movement_direction_hori -= 1
}
if keyboard_check(vk_right)
{
	movement_direction_hori += 1
}
if keyboard_check(vk_up)
{
	movement_direction_vert -= 1
}
if keyboard_check(vk_down)
{
	movement_direction_vert += 1
}

x = x + movement_direction_hori * movement_spd
y = y + movement_direction_vert * movement_spd