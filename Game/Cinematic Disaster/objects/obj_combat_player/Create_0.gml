
// Constants
starting_x = x
starting_y = y
run_speed = 4
start_attack_frame = 13
end_attack_frame = 15
attack_hit_frame = 4

// Variables
inst_target_id = false // id of enemy to walk to
move_towards_target = false
move_towards_idle = false

// Animations
anim_idle = spr_combat_player_idle
anim_run = spr_combat_player_run
anim_hit = spr_combat_player_hit
anim_dodge = spr_combat_player_dodge
anim_ready = spr_combat_player_clapperboard_ready
anim_attack = spr_combat_player_clapperboard_attack

start_player_attack = function(inst_enemy_id)
{
	inst_target_id = inst_enemy_id
	sprite_index = anim_run
	move_towards_target = true
}

play_hit_anim = function()
{
	sprite_index = anim_hit
}