// adding images to the roaming tutorial

own_time++


if current_dialogue == "Tutorial" {
	switch obj_textbox.current_action {
		default:
		break

		case 1:
			//big arrow pointing to vending machine
			draw_sprite_stretched(spr_arrow, (own_time/30) % 2, 420, 320, 100, 100)
		break

		case 2:
			draw_sprite_stretched(spr_guibg_black, 0, 450, 200, 500, 250)
		
			// item on the left
			draw_sprite_stretched(spr_item_coffee, 0, 500, 220, 192, 192)
			
			//employee on the right
			draw_sprite_stretched(spr_hire_janewick_gun_idle, 0, 700, 220, 192, 192)
			
		break
	
		case 3:
			// glitchy mouse and ape
			draw_sprite_stretched(spr_guibg_black, 0, 450, 200, 500, 250)
			
			draw_sprite_stretched(spr_encounter_1, (own_time/4) % 17, 500, 252, 192, 128)
			draw_sprite_stretched(spr_encounter_2, (own_time/4) % 14, 700, 220, 192, 192)
			
		break
	
		case 4:
			// big arrow pointing to HUD
			draw_sprite_stretched(spr_arrow, (own_time/30) % 2, 20, 200, 100, 100)
		break
		
		case 5:
			// big arrow pointing to HUD
			draw_sprite_stretched(spr_arrow, (own_time/30) % 2, 20, 200, 100, 100)
		break
		
		case 6:
			instance_destroy()
		break
	
	}
	
}