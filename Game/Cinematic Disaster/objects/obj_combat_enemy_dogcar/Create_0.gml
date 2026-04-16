// Constants
starting_x = x
starting_y = y
attack_speed = 60
attack_damage = 3
attack_speed_frame = 5
max_screen_awayness = 150

// Variables
inst_target_id = false
has_already_hit = false
health_num = 8
is_go_speed = false
finished_round_trip = false
player_attacked = false

// Animations
anim_idle = spr_enemy_dogcar_idle
anim_hit = spr_enemy_dogcar_hit
anim_attack = spr_enemy_dogcar_attack

// Functions
get_hit = function(damage_taken, status_effect)
{
	health_num -= damage_taken
	
	sprite_index = anim_hit
	image_index = 0
}

start_attack = function(inst_player_id)
{
	inst_target_id = inst_player_id
	
	sprite_index = anim_attack
	image_index = 0
}