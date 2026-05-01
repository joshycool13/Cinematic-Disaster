x = x + move_x
y = y + move_y

if move_x > 0
{
	move_x -= 0.5
}
else if move_x < 0
{
	move_x += 0.5
}

if move_y < 0
{
	move_y += 0.5
}