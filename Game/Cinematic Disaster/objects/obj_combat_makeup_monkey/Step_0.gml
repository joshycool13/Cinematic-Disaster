// banana attack
if sprite_index = anim_attack and image_index >= attack_hit_frames[0] and image_index < attack_hit_frames[0] + 1 and not has_already_fired
{
	has_already_fired = true
	
	var banana = instance_create_layer(x, y-110, "Front_Instances", obj_banana_makeup)
	banana.image_xscale = -1
	banana.banana_damage = banana_damage
	banana.banana_speed = banana_speed
	banana.inst_target_id = inst_target_id
	banana.is_wet = is_wet
	banana.inst_monkey_id = self
}

if sprite_index = anim_attack and image_index >= attack_hit_frames[0] + 1 and image_index < attack_hit_frames[0] + 2 and has_already_fired
{
	has_already_fired = false
}

if sprite_index = anim_attack and image_index >= attack_hit_frames[1] and image_index < attack_hit_frames[1] + 1 and not has_already_fired
{
	has_already_fired = true
	
	var banana = instance_create_layer(x, y-110, "Front_Instances", obj_banana_makeup)
	banana.image_xscale = -1
	banana.banana_damage = banana_damage
	banana.banana_speed = banana_speed
	banana.inst_target_id = inst_target_id
	banana.is_wet = is_wet
	banana.inst_monkey_id = self
}

if sprite_index = anim_attack and image_index >= attack_hit_frames[1] + 1 and image_index < attack_hit_frames[1] + 2 and has_already_fired
{
	has_already_fired = false
}

if sprite_index = anim_attack and image_index >= attack_hit_frames[2] and image_index < attack_hit_frames[2] + 1 and not has_already_fired
{
	has_already_fired = true
	
	var banana = instance_create_layer(x, y-110, "Front_Instances", obj_banana_makeup)
	banana.image_xscale = -1
	banana.banana_damage = banana_damage
	banana.banana_speed = banana_speed
	banana.inst_target_id = inst_target_id
	banana.is_wet = is_wet
	banana.inst_monkey_id = self
}

if sprite_index = anim_attack and image_index >= attack_hit_frames[2] + 1 and image_index < attack_hit_frames[2] + 2 and has_already_fired
{
	has_already_fired = false
}

// screech
if sprite_index = anim_screech and image_index >= screech_fired_frame and image_index < screech_fired_frame + 1 and not has_already_fired
{
	has_already_fired = true
	
	var inst_screech = instance_create_layer(window_get_width(), y-64, "Instances", obj_screech)
	inst_screech.image_xscale = -1
}

if sprite_index = anim_screech and image_index >= screech_fired_frame + 1 and image_index < screech_fired_frame + 2 and has_already_fired
{
	has_already_fired = false
}

if sprite_index = anim_screech and image_index >= screech_hit_frame and image_index < screech_hit_frame + 1 and not has_already_hit
{
	has_already_hit = true
	
	if is_wet
	{
		obj_combat_state.attacked_is_hit(inst_target_id, screech_damage-2, false, "deafen")
	}
	else
	{
		obj_combat_state.attacked_is_hit(inst_target_id, screech_damage, false, "deafen")
	}
}

if sprite_index = anim_screech and image_index >= screech_hit_frame + 1 and image_index < screech_hit_frame + 2 and has_already_hit
{
	has_already_hit = false
}