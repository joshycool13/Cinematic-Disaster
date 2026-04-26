kill_self = function()
{
	instance_create_layer(x, y, "Smoke", obj_combat_smokepuff)
	alarm[0] = 15
}