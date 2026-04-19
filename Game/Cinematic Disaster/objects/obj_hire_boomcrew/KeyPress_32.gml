if instance_exists(inst_slider) and inst_slider.x > inst_bar.x - green_bar_x_begin and inst_slider.x < inst_bar.x - green_bar_x_end
{
	instance_destroy(inst_slider)
	instance_destroy(inst_bar)
	sprite_index = anim_bomb_throw
	image_index = 0
}
else if instance_exists(inst_slider)
{
	instance_destroy(inst_slider)
	instance_destroy(inst_bar)
	sprite_index = anim_bomb_miss
	image_index = 0
}