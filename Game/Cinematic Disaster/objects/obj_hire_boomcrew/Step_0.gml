if instance_exists(inst_slider)
{
	inst_slider.x += slider_speed
	
	if inst_slider.x > inst_bar.x
	{
		obj_tutorialtext.is_visible = false
		
		instance_destroy(inst_slider)
		instance_destroy(inst_bar)
		sprite_index = anim_bomb_miss
		image_index = 0
	}
}

if sprite_index = anim_bomb_throw and image_index >= attack_hit_frame and image_index < attack_hit_frame + 1 and not has_already_hit
{
	has_already_hit = true
	inst_bomb = instance_create_layer(x + bomb_x, y + bomb_y, "Front_Instances", obj_bomb)
}

if sprite_index = anim_bomb_throw and image_index >= attack_hit_frame + 1 and image_index < attack_hit_frame + 2 and has_already_hit
{
	has_already_hit = false
}

if instance_exists(inst_bomb)
{
	v_speed += bomb_gravity
	inst_bomb.x += h_speed
	inst_bomb.y += v_speed
	if inst_bomb.y > y
	{
		inst_bomb.y = y
		inst_bomb_explosion = instance_create_layer(inst_bomb.x, inst_bomb.y, "Front_Instances", obj_bomb_explosion)
		inst_bomb_explosion.inst_actor = self
		instance_destroy(inst_bomb)
		
		audio_stop_sound(inst_fuse_sound)
		var num_thing = irandom(1)
		switch num_thing
		{
			case 0:
				audio_play_sound(explosion__1_, 4, false)
			break;
			
			case 1:
				audio_play_sound(explosion__2_, 4, false)
			break;
		}
		
		obj_combat_state.attacked_is_hit(inst_target_id, attack_damage, true)
	}
}