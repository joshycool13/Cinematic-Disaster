if sprite_index = anim_copy
{
	image_speed = 0
	image_index = 0
	
	if is_attack
	{
		
	}
	else
	{
		var defend = irandom(array_length(defend_options))
		inst_player_id.start_defend(defend_options[defend],0)
		instance_create_layer(x, y, "Smoke", obj_combat_smokepuff)
		alarm[0] = 15
	}
}